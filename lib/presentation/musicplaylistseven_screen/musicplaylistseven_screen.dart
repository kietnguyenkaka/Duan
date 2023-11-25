import 'package:flutter/material.dart';
import 'package:vip_app/core/app_export.dart';
import 'package:vip_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:vip_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:vip_app/widgets/app_bar/custom_app_bar.dart';
import 'package:vip_app/widgets/custom_elevated_button.dart';

class MusicplaylistsevenScreen extends StatelessWidget {
  const MusicplaylistsevenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                height: 724.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 11.h, top: 22.v, right: 16.h),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            _buildPlay(context),
                            SizedBox(height: 28.v),
                            Divider(color: appTheme.gray900),
                            SizedBox(height: 33.v),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                        Text("lbl_misery_sequence".tr,
                                            style: theme.textTheme.bodyLarge),
                                        SizedBox(height: 31.v),
                                        Text("lbl_slither".tr,
                                            style: theme.textTheme.bodyLarge),
                                        SizedBox(height: 34.v),
                                        Text("msg_twisting_the_knife".tr,
                                            style: theme.textTheme.bodyLarge),
                                        SizedBox(height: 33.v),
                                        Text("lbl_deny_the_truth".tr,
                                            style: theme.textTheme.bodyLarge),
                                        SizedBox(height: 32.v),
                                        Text("lbl_unsettling".tr,
                                            style: theme.textTheme.bodyLarge),
                                        SizedBox(height: 31.v),
                                        Text("lbl_sense_of_doubt".tr,
                                            style: theme.textTheme.bodyLarge),
                                        SizedBox(height: 34.v),
                                        Text("msg_end_of_me_feat".tr,
                                            style: theme.textTheme.bodyLarge),
                                        SizedBox(height: 32.v),
                                        Text("msg_breathless_feat".tr,
                                            style: theme.textTheme.bodyLarge),
                                        SizedBox(height: 31.v),
                                        Text("lbl_the_bitter_end".tr,
                                            style: theme.textTheme.bodyLarge)
                                      ])),
                                  Container(
                                      height: 8.adaptSize,
                                      width: 8.adaptSize,
                                      margin: EdgeInsets.only(
                                          left: 65.h, top: 4.v, bottom: 430.v),
                                      decoration: BoxDecoration(
                                          color: appTheme.deepPurple300,
                                          borderRadius:
                                              BorderRadius.circular(4.h)))
                                ])
                          ]))),
                  _buildUITabBarPlayer(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 88.v,
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 54.v, bottom: 10.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleTwo(
            text: "msg_chillout_and_ambient".tr,
            margin: EdgeInsets.only(top: 52.v, bottom: 10.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildPlay(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CustomImageView(
          imagePath: ImageConstant.imgPic,
          height: 120.adaptSize,
          width: 120.adaptSize,
          radius: BorderRadius.circular(16.h)),
      Padding(
          padding: EdgeInsets.only(top: 2.v, bottom: 4.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("lbl_huuthuan_ndk2".tr,
                style: CustomTextStyles.titleMediumInterBluegray50),
            SizedBox(height: 5.v),
            Text("msg_22_tracks_32".tr,
                style: CustomTextStyles.bodyMediumInterGray600),
            SizedBox(height: 30.v),
            SizedBox(
                width: 209.h,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomElevatedButton(
                          height: 40.v,
                          width: 145.h,
                          text: "lbl_play".tr,
                          buttonStyle: CustomButtonStyles.fillBlueGray,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumInterDeeppurple300_1),
                      Container(
                          height: 40.v,
                          width: 56.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 8.v),
                          decoration: AppDecoration.fillBluegray90001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgUiIconShuffle,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              alignment: Alignment.center))
                    ]))
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildUITabBarPlayer(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            decoration: AppDecoration.fillBlack90019,
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(
                  height: 2.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.centerLeft, children: [
                    Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                            width: double.maxFinite, child: Divider())),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                            width: 175.h,
                            child: Divider(color: appTheme.deepPurple300)))
                  ])),
              SizedBox(height: 8.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(children: [
                          Text("lbl_misery_sequence".tr,
                              style: theme.textTheme.bodyLarge),
                          SizedBox(height: 5.v),
                          Text("msg_brutality_will_prevail".tr,
                              style: CustomTextStyles.bodyMediumInterGray600)
                        ]),
                        CustomImageView(
                            imagePath: ImageConstant.imgUiIconPause,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(top: 7.v, bottom: 10.v))
                      ])),
              SizedBox(height: 8.v),
              Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 6.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgUiIconHome,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(bottom: 13.v)),
                        CustomImageView(
                            imagePath: ImageConstant.imgUiIconRadio,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(bottom: 13.v),
                            onTap: () {
                              onTapImgUIIconRadio(context);
                            }),
                        CustomImageView(
                            imagePath: ImageConstant.imgUiIconCloud,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(bottom: 13.v),
                            onTap: () {
                              onTapImgUIIconCloud(context);
                            })
                      ]))
            ])));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the musicsongeightScreen when the action is triggered.
  onTapImgUIIconRadio(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.musicsongeightScreen);
  }

  /// Navigates to the coutdownmusicnineScreen when the action is triggered.
  onTapImgUIIconCloud(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.coutdownmusicnineScreen);
  }
}
