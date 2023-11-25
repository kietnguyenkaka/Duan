import 'package:flutter/material.dart';
import 'package:vip_app/core/app_export.dart';
import 'package:vip_app/widgets/app_bar/custom_app_bar.dart';
import 'package:vip_app/widgets/custom_elevated_button.dart';
import 'package:vip_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SuggestfourteenScreen extends StatelessWidget {
  SuggestfourteenScreen({Key? key}) : super(key: key);

  TextEditingController editTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: appTheme.black90002,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: appTheme.black90002,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgLoadingscreenone),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: 360.h,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 52.v),
                          Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildAppBar(context),
                                    Container(
                                        height: 153.v,
                                        width: 120.h,
                                        margin: EdgeInsets.only(top: 7.v),
                                        child: Stack(
                                            alignment: Alignment.bottomRight,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: SizedBox(
                                                      height: 120.adaptSize,
                                                      width: 120.adaptSize,
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgRectangle7,
                                                                height: 80
                                                                    .adaptSize,
                                                                width: 80
                                                                    .adaptSize,
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        40.h),
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgAvatars3dAvatar24,
                                                                height: 120
                                                                    .adaptSize,
                                                                width: 120
                                                                    .adaptSize,
                                                                alignment:
                                                                    Alignment
                                                                        .center)
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 12.h),
                                                      child: Text(
                                                          "lbl_thuan".tr,
                                                          style: theme.textTheme
                                                              .headlineLarge)))
                                            ]))
                                  ])),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 7.h, vertical: 27.v),
                              child: Column(children: [
                                _buildEditText(context),
                                SizedBox(height: 46.v),
                                CustomElevatedButton(
                                    width: 180.h,
                                    text: "lbl_next".tr,
                                    onPressed: () {
                                      onTapNext(context);
                                    }),
                                SizedBox(height: 5.v)
                              ]))
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 160.v,
        leadingWidth: 360.h,
        leading: Container(
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(left: 21.h, right: 315.h),
            child: Stack(alignment: Alignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.center,
                  onTap: () {
                    onTapImgArrowLeft(context);
                  }),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.center)
            ])));
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 36.h, vertical: 13.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 25.h),
                  child: Text("msg_h_y_nh_gi_gi_c".tr,
                      style: CustomTextStyles.bodyMedium14)),
              SizedBox(height: 18.v),
              CustomTextFormField(
                  controller: editTextController,
                  textInputAction: TextInputAction.done),
              SizedBox(height: 17.v)
            ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the sleepreportfifteenScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sleepreportfifteenScreen);
  }
}
