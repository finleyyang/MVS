/*
* Camera.cpp
*
* Copyright (c) 2014-2015 SEACAVE
*
* Author(s):
*
*      cDc <cdc.seacave@gmail.com>
*
*
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU Affero General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU Affero General Public License for more details.
*
* You should have received a copy of the GNU Affero General Public License
* along with this program.  If not, see <http://www.gnu.org/licenses/>.
*
*
* Additional Terms:
*
*      You are required to preserve legal notices and author attributions in
*      that material or in the Appropriate Legal Notices displayed by works
*      containing it.
*/

#include "Common.h"
#include "Camera.h"

using namespace MVS;


// D E F I N E S ///////////////////////////////////////////////////


// S T R U C T S ///////////////////////////////////////////////////

const Camera Camera::IDENTITY(Matrix3x3::eye(), Point3(REAL(0), REAL(0), REAL(0)));

Camera::Camera(const Matrix3x4& _P, bool bUpdate/*=true*/)
	:
	P(_P)
{
	if (bUpdate)
		DecomposeP();
} // Camera
Camera::Camera(const Matrix3x3& _R, const Point3& _C, bool bUpdate/*=true*/)
	:
	CameraIntern(_R, _C)
{
	if (bUpdate)
		ComposeP_RC();
} // Camera
Camera::Camera(const Matrix3x3& _K, const Matrix3x3& _R, const Point3& _C, bool bUpdate/*=true*/)
	:
	CameraIntern(_K, _R, _C)
{
	if (bUpdate)
		ComposeP();
} // Camera
/*----------------------------------------------------------------*/


Camera& Camera::operator= (const CameraIntern& camera)
{
	K = camera.K;
	R = camera.R;
	C = camera.C;
	return *this;
}
/*----------------------------------------------------------------*/


void Camera::ComposeP_RC()
{
	AssembleProjectionMatrix(R, C, P);
} // ComposeP_RC
/*----------------------------------------------------------------*/

void Camera::ComposeP()
{
	AssembleProjectionMatrix(K, R, C, P);
} // ComposeP
/*----------------------------------------------------------------*/

void Camera::DecomposeP_RC()
{
	DecomposeProjectionMatrix(P, R, C);
} // DecomposeP_RC
/*----------------------------------------------------------------*/

void Camera::DecomposeP()
{
	DecomposeProjectionMatrix(P, K, R, C);
} // DecomposeP
/*----------------------------------------------------------------*/

void Camera::Transform(const Matrix3x3& _R, const Point3& _t, const REAL& _s)
{
	R = R * _R.t();
	C = _R*C*_s+_t;
	ComposeP();
} // Transform
/*----------------------------------------------------------------*/


REAL Camera::PointDepth(const Point3& X) const
{
	return P(2,0)*X.x + P(2,1)*X.y + P(2,2)*X.z + P(2,3);
} // PointDepth
/*----------------------------------------------------------------*/

bool Camera::IsInFront(const Point3& X) const
{
	return (PointDepth(X)>0);
} // IsInFront
/*----------------------------------------------------------------*/

REAL Camera::DistanceSq(const Point3& X) const
{
	const Point3 ray = X-C;
	return (SQUARE(ray.x)+SQUARE(ray.y)+SQUARE(ray.z));
} // Distance
/*----------------------------------------------------------------*/


// decomposition of projection matrix into KR[I|-C]: internal calibration ([3,3]), rotation ([3,3]) and translation ([3,1])
// (comparable with OpenCV: normalized cv::decomposeProjectionMatrix)
void MVS::DecomposeProjectionMatrix(const PMatrix& P, KMatrix& K, RMatrix& R, CMatrix& C)
{
	// extract camera center as the right null vector of P
	const Vec4 hC(P.RightNullVector());
	C = (const CMatrix&)hC * INVERT(hC[3]);
	// perform RQ decomposition
	const cv::Mat mP(3,4,cv::DataType<REAL>::type,(void*)P.val);
	cv::RQDecomp3x3(mP(cv::Rect(0,0, 3,3)), K, R);
	// normalize calibration matrix
	K *= INVERT(K(2,2));
	// ensure positive focal length
	if (K(0,0) < 0) {
		ASSERT(K(1,1) < 0);
		NEGATE(K(0,0));
		NEGATE(K(1,1));
		NEGATE(K(0,1));
		NEGATE(K(0,2));
		NEGATE(K(1,2));
		(TMatrix<REAL,2,3>&)R *= REAL(-1);
	}
	ASSERT(R.IsValid());
} // DecomposeProjectionMatrix
void MVS::DecomposeProjectionMatrix(const PMatrix& P, RMatrix& R, CMatrix& C)
{
	#ifndef _RELEASE
	KMatrix K;
	DecomposeProjectionMatrix(P, K, R, C);
	ASSERT(K.IsEqual(Matrix3x3::IDENTITY));
	#endif
	// extract camera center as the right null vector of P
	const Vec4 hC(P.RightNullVector());
	C = (const CMatrix&)hC * INVERT(hC[3]);
	// get rotation
	const cv::Mat mP(3,4,cv::DataType<REAL>::type,(void*)P.val);
	mP(cv::Rect(0,0, 3,3)).copyTo(R);
	ASSERT(R.IsValid());
} // DecomposeProjectionMatrix
/*----------------------------------------------------------------*/

// assemble projection matrix: P=KR[I|-C]
// 计算投影矩阵世界坐标系下的点Pw投影到图像上的投影矩阵
void MVS::AssembleProjectionMatrix(const KMatrix& K, const RMatrix& R, const CMatrix& C, PMatrix& P)
{
	// compute temporary matrices
	cv::Mat mP(3,4,cv::DataType<REAL>::type,(void*)P.val);
	cv::Mat M(mP, cv::Rect(0,0, 3,3));
	cv::Mat(K * R).copyTo(M); //3x3
	mP.col(3) = M * cv::Mat(-C); //3x1
} // AssembleProjectionMatrix
void MVS::AssembleProjectionMatrix(const RMatrix& R, const CMatrix& C, PMatrix& P)
{
	Eigen::Map<Matrix3x3::EMat,0,Eigen::Stride<4,0> > eM(P.val);
	eM = (const Matrix3x3::EMat)R;
	Eigen::Map< Point3::EVec,0,Eigen::Stride<0,4> > eT(P.val+3);
	eT = ((const Matrix3x3::EMat)R) * (-((const Point3::EVec)C)); //3x1
} // AssembleProjectionMatrix
/*----------------------------------------------------------------*/



namespace MVS {

namespace RECTIFY {
	
// compute the ROIs for the two images based on the corresponding points
// 根据对应的点计算两幅图像的roi
void GetImagePairROI(const Point3fArr& points1, const Point3fArr& points2, const Matrix3x3& K1, const Matrix3x3& K2, const Matrix3x3& R1, const Matrix3x3& R2, const Matrix3x3& invK1, const Matrix3x3& invK2, AABB2f& roi1h, AABB2f& roi2h)
{
	ASSERT(!points1.empty() && points1.size() && points2.size());

	// compute rectification homography (from original to rectified image)
	// 计算单应性矩阵，将原图像的坐标转换到校正后图像对应坐标
    // 原图像坐标->相机坐标系下的坐标->投影到矫正后的坐标下->矫正后图像坐标
    // 原图像坐标->相机坐标系下的坐标 invK1 * P
    // 投影到矫正后的相机下的坐标  R1 * invK1 * P
    // 矫正之后的图像坐标 K1 * R1 * invK1 * P
	const Matrix3x3 H1(K1 * R1 * invK1);
	const Matrix3x3 H2(K2 * R2 * invK2);

	// determine the ROIs in rectified images
	// 计算ROI的边界
	roi1h.Reset(); roi2h.Reset();
	FOREACH(i, points1) {
		Point2f xh;
		const Point3f& x1 = points1[i];
		// 计算校正后的坐标
		ProjectVertex_3x3_2_2(H1.val, x1.ptr(), xh.ptr());
		// 将其加入到roi内
		roi1h.InsertFull(xh);
		const Point3f& x2 = points2[i];
		ProjectVertex_3x3_2_2(H2.val, x2.ptr(), xh.ptr());
		roi2h.InsertFull(xh);
	}
}

void SetCameraMatricesROI(const AABB2f& roi1h, const AABB2f& roi2h, cv::Size& size1, cv::Size& size2, Matrix3x3& K1, Matrix3x3& K2)
{
	// set the new image sizes such that they are equal and contain the entire ROI
	// 设置新的图像大小，使它们相等，并包含整个ROI
	const Point2f size1h(roi1h.GetSize());
	const Point2f size2h(roi2h.GetSize());
	const int maxSize(MAXF(size1.width+size2.width, size1.height+size2.height)/2);
	size1.width = size2.width = MINF(ROUND2INT(MAXF(size1h.x,size2h.x)), maxSize);
	size1.height = size2.height = MINF(ROUND2INT(MAXF(size1h.y,size2h.y)), maxSize);

	// set the new camera matrices such that the ROI is centered
	// 设置新的相机矩阵，使ROI居中
	const Point2f center1h(roi1h.GetCenter());
	const Point2f center2h(roi2h.GetCenter());
	// 调整K矩阵，使得ROI区域位于相机中间
	K1(0,2) += size1.width /2-center1h[0];
	K1(1,2) += size1.height/2-center1h[1];
	K2(0,2) += size2.width /2-center2h[0];
	K2(1,2) += size2.height/2-center2h[1];
}

} // namespace RECTIFY

} // namespace MVS

// Compute stereo rectification homographies that transform two images,
// such that corresponding pixels in one image lie on the same scan-line in the other image;
// note: this function assumes that the two cameras are already undistorted
REAL Camera::StereoRectify(const cv::Size& size1, const Camera& camera1, const cv::Size& size2, const Camera& camera2, Matrix3x3& R1, Matrix3x3& R2, Matrix3x3& K1, Matrix3x3& K2)
{
	// compute relative pose
	RMatrix poseR;
	CMatrix poseC;
	ComputeRelativePose(camera1.R, camera1.C, camera2.R, camera2.C, poseR, poseC);

	// compute the average rotation between the first and the second camera
	const Point3 r(poseR.GetRotationAxisAngle());
	reinterpret_cast<RMatrix&>(R2).SetFromAxisAngle(r*REAL(-0.5));
	R1 = R2.t();

	// compute the translation, such that it coincides with the X-axis
	int idx(0);
	Point3 t(R2 * (poseR*(-poseC)));
	#if 0
	const Point3 unitX(t.x<0?-1:1, 0, 0);
	const Point3 axis(t.cross(unitX));
	const REAL normAxis(norm(axis));
	if (normAxis > EPSILONTOLERANCE<REAL>()) {
		ASSERT(t.dot(unitX) >= 0);
		const REAL angle(ACOS(ComputeAngle(t.ptr(), unitX.ptr())));
		const RMatrix Rx(axis*angle/normAxis);
	#else
	const REAL nt(norm(t));
	//idx = (ABS(t.x) > ABS(t.y) ? 0 : 1);
	Point3 axis(Point3(0,0,1).cross(t));
	const REAL na(norm(axis));
	if (na < EPSILONTOLERANCE<REAL>())
		return 0;
	{
		const Point3 w(normalized(t.cross(axis)));
		RMatrix Rx;
		for (int i = 0; i < 3; ++i) {
			Rx(idx,i) = -t[i]/nt;
			Rx(idx^1,i) = -axis[i]/na;
			Rx(2,i) = w[i]*(1-2*idx); // if idx == 1 -> opposite direction
		}
	#endif
		R1 = Rx * R1;
		R2 = Rx * R2;
		t = R2 * (poseR*(-poseC));
	}
	ASSERT(ISEQUAL(-t.x, norm(camera2.C-camera1.C)) && ISZERO(t.y) && ISZERO(t.z));

	// determine the intrinsic calibration matrix;
	// vertical focal length must be the same for both images to keep the epipolar constraint
	K1 = Matrix3x3::IDENTITY;
	K1(0,0) = (camera1.K(0,0)+camera2.K(0,0))/2;
	K1(1,1) = (camera1.K(1,1)+camera2.K(1,1))/2;
	K2 = K1;
	// set ROI to contain the whole transformed image
	for (int k = 0; k < 2; k++) {
		const Matrix3x3 H(k == 0 ? K1*R1*camera1.GetInvK() : K2*R2*camera2.GetInvK());
		Point2f ptMin(std::numeric_limits<float>::max());
		for (int i = 0; i < 4; i++) {
			const Point2f pt(
				(float)((i%2)*size1.width),
				(float)((i<2?0:1)*size1.height)
			);
			Point2f ptH;
			ProjectVertex_3x3_2_2(H.val, pt.ptr(), ptH.ptr());
			ptMin.x = MINF(ptMin.x,ptH.x);
			ptMin.y = MINF(ptMin.y,ptH.y);
		}
		Matrix3x3& KNew(k == 0 ? K1 : K2);
		KNew(0,2) = -ptMin.x;
		KNew(1,2) = -ptMin.y;
	}
	K1(idx^1,2) = K2(idx^1,2) = MAXF(K1(idx^1,2), K2(idx^1,2));
	return t.x;
} // StereoRectify

// see: "A compact algorithm for rectification of stereo pairs", A. Fusiello, E. Trucco, and A. Verri, 2000
// 极线校正
// !!! 注意 C指点是相机中心在世界坐标系中的坐标，而非我们常用的平移向量。我们常用的坐标转换（世界到相机）：p_c=R*p_w+t
// !!! t是平移向量。相机中心p_c=[0,0,0],根据上述公式推出其在世界坐标系中的坐标p_w=-R_invert*t。这个值就是我们的C
// !!! 将C=-R_invert*t代入P = KR[I|-C]，p_c=R(p_w-(-R_invert*t))=Rp_w+t  p=k*p_c
REAL Camera::StereoRectifyFusiello(const cv::Size& size1, const Camera& camera1, const cv::Size& size2, const Camera& camera2, Matrix3x3& R1, Matrix3x3& R2, Matrix3x3& K1, Matrix3x3& K2)
{
	// compute relative pose
	// 计算相对位姿
	RMatrix poseR;
	CMatrix poseC;
    // 教程第16个公式
    // Rlr 表示从l到r，left上的点相机坐标右乘Rlr得right图上的点的相机坐标（Pr = Rlr*Pl）
    // Rlr = Rr * Rlt
    // Clr = Rl * (Cr - Cl) 其中Clr表示右相机光心在左相机坐标系下的位置（也就是与右相机光心【0，0，0】的距离）
    // Rlr : poseR, Clr : poseC
	ComputeRelativePose(camera1.R, camera1.C, camera2.R, camera2.C, poseR, poseC);

	// new x axis (baseline, from C1 to C2)
	// 新的x轴，基线方向
	const Point3 v1(camera2.C-camera1.C);
	// new y axes (orthogonal to old z and new x)
	// 新的y轴，垂直旧的Z轴（光轴）和新的X轴
	const Point3 v2(camera1.Direction().cross(v1));
	// new z axes (no choice, orthogonal to baseline and y)
	// 新的Z轴，垂直上面两个新轴
	const Point3 v3(v1.cross(v2));

	// new extrinsic (translation unchanged)
	// 新的外参，平移不变
    // Rnew  = [e1, e2, e3]
	RMatrix R;
	R.SetFromRowVectors(normalized(v1), normalized(v2), normalized(v3));

	// new intrinsic (arbitrary)（任意的）？？？？
    // 实际没做多少改变？？？
	// 新的内参
	K1 = camera1.K; K1(0,1) = 0;
	K2 = camera2.K; K2(0,1) = 0;
    // y方向焦距相等
	K1(1,1) = K2(1,1) = (camera1.K(1,1)+camera2.K(1,1))/2;

	// new rotations
	// 新的选择从校正前的相机坐标系转到校正后的相机坐标系
    // 新的旋转矩阵，公式15
    // Rlnew = Rnew * Rlt
    // Rrnew = Rnew * Rrt
	R1 = R*camera1.R.t();
	R2 = R*camera2.R.t();

	#if 0
	// new projection matrices
	PMatrix P1, P2;
	AssembleProjectionMatrix(K1, R, camera1.C, P1);
	AssembleProjectionMatrix(K2, R, camera2.C, P2);

	// rectifying image transformation
	#if 0
	const Matrix3x3 H1((PMatrix::EMat(P1).leftCols<3>()*(PMatrix::EMat(camera1.P).leftCols<3>().inverse())).eval());
	const Matrix3x3 H2((PMatrix::EMat(P2).leftCols<3>()*(PMatrix::EMat(camera2.P).leftCols<3>().inverse())).eval());
	#else
	const Matrix3x3 H1(K1*R*camera1.R.t()*camera1.GetInvK());
	const Matrix3x3 H2(K2*R*camera2.R.t()*camera2.GetInvK());
	#endif
	#endif

	// 计算新的基线距离
    // t = Rrnew * Rlr * ([0, 0, 0] - Clr)
	const Point3 t(R2 * (poseR*(-poseC)));
	ASSERT(ISEQUAL(-t.x, norm(v1)) && ISZERO(t.y) && ISZERO(t.z));
	return t.x;
} // StereoRectifyFusiello

// adjust rectified camera matrices such that the entire area common to both source images is contained in the rectified images;
// as long as the focal-length on x and the skewness are equal in both cameras
// the point-scale is also equal in both images;
// note however that the surface-scale can still be different (most likely is)
// as it depends on its (unknown) normal too;
//  - points1 and points2: contain the pairs of corresponding pairs of image projections and their depth
//  - size1 and size2: input the size of the source images, output the size of the rectified images (rectified image sizes are equal)
/**
 * @brief 调整矫正后的相机矩阵，使矫正后的图像包含两个源图像共有的整个区域;只要两种相机在x上的焦距和偏度相等，
 * 那么两种图像的点尺度也相等。
 * 
 * @param[in] points1 包含对应对的图像投影坐标及其深度
 * @param[in] size1   左图像尺寸
 * @param[in] camera1 左图像相机参数
 * @param[in] points2 包含对应对的图像投影坐标及其深度
 * @param[in] size2   右图像尺寸
 * @param[in] camera2 右图像相机参数
 * @param[in] R1      左图的校正后的投影矩阵
 * @param[in] R2      同上
 * @param[in] K1      左图的校正后的相机内参
 * @param[in] K2      同上
 */

void Camera::SetStereoRectificationROI(const Point3fArr& points1, cv::Size& size1, const Camera& camera1, const Point3fArr& points2, cv::Size& size2, const Camera& camera2, const Matrix3x3& R1, const Matrix3x3& R2, Matrix3x3& K1, Matrix3x3& K2)
{
	ASSERT(!points1.empty() && points1.size() && points2.size());

	#if 1
	// ignore skewness
	// 将偏移系数设为0
	K1(0,1) = K2(0,1) = 0;
	#else
	// set same skewness
	K1(0,1) = K2(0,1) = (K1(0,1)+K2(0,1))/2;
	#endif

	// set same focal-length on x too
	// 将两个图像焦距设为一样
	K1(0,0) = K2(0,0) = (K1(0,0)+K2(0,0))/2;
	ASSERT(ISEQUAL(K1(1,1), K2(1,1)));

	// determine the ROIs in rectified images
	// 取两个校正后图像的共视区域
	AABB2f roi1h, roi2h;
	RECTIFY::GetImagePairROI(points1, points2, K1, K2, R1, R2, camera1.GetInvK(), camera2.GetInvK(), roi1h, roi2h);

	// set the new camera matrices such that the ROI is centered
	// 设置新的相机矩阵，使ROI居中
	RECTIFY::SetCameraMatricesROI(roi1h, roi2h, size1, size2, K1, K2);
} // SetStereoRectificationROI
/*----------------------------------------------------------------*/
