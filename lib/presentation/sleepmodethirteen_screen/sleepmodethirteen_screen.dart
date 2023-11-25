import 'package:flutter/material.dart';
import 'package:vip_app/core/app_export.dart';
import 'package:vip_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:vip_app/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:vip_app/widgets/app_bar/appbar_title.dart';
import 'package:vip_app/widgets/app_bar/custom_app_bar.dart';

class SleepmodethirteenScreen extends StatelessWidget {
  const SleepmodethirteenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: _buildAppBar(context),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: appTheme.black900,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgSleepmodethirteen),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 23.v),
                    child: Column(children: [
                      SizedBox(
                          height: 216.v,
                          width: 217.h,
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    height: 216.adaptSize,
                                    width: 216.adaptSize,
                                    child: CircularProgressIndicator(
                                        value: 0.5,
                                        backgroundColor: appTheme.whiteA700,
                                        color: appTheme.deepPurple800))),
                            CustomImageView(
                                imagePath: ImageConstant.img360010012,
                                height: 180.adaptSize,
                                width: 180.adaptSize,
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    height: 7.adaptSize,
                                    width: 7.adaptSize,
                                    decoration: BoxDecoration(
                                        color: appTheme.whiteA700,
                                        borderRadius:
                                            BorderRadius.circular(3.h),
                                        border: Border.all(
                                            color: appTheme.deepPurple800,
                                            width: 5.h,
                                            strokeAlign: strokeAlignOutside))))
                          ])),
                      SizedBox(height: 23.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 26.h, vertical: 6.v),
                          decoration: AppDecoration.fillIndigoA.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgAlarmWhite1,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 1.v, bottom: 5.v)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.h, bottom: 2.v),
                                    child: Text("lbl_04_00".tr,
                                        style: CustomTextStyles
                                            .titleLargeRobotoWhiteA700_1))
                              ])),
                      SizedBox(height: 70.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgSwipeUp,
                          height: 127.v,
                          width: 40.h,
                          onTap: () {
                            onTapImgSwipeUp(context);
                          }),
                      SizedBox(height: 16.v),
                      Text("msg_swipe_up_to_awake".tr,
                          style: CustomTextStyles.titleMediumRoboto),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 149.v,
        leadingWidth: 45.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 21.h, bottom: 73.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: SizedBox(
            height: 88.19001.v,
            width: 154.h,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              AppbarSubtitleFour(
                  text: "lbl_good_night".tr,
                  margin:
                      EdgeInsets.only(left: 29.h, right: 34.h, bottom: 64.v)),
              AppbarTitle(
                  text: "lbl_20_30".tr, margin: EdgeInsets.only(top: 16.v))
            ])));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the suggestfourteenScreen when the action is triggered.
  onTapImgSwipeUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.suggestfourteenScreen);
  }
}
