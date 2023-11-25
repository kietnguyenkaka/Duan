import 'package:flutter/material.dart';
import 'package:vip_app/core/app_export.dart';
import 'package:vip_app/widgets/custom_elevated_button.dart';
import 'package:vip_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class InputnametwoScreen extends StatelessWidget {
  InputnametwoScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController fieldController = TextEditingController();

  TextEditingController fieldController1 = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                child: Form(
                    key: _formKey,
                    child: Container(
                        width: 360.h,
                        padding: EdgeInsets.symmetric(horizontal: 25.h),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 30.v),
                              SizedBox(
                                  height: 120.adaptSize,
                                  width: 120.adaptSize,
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle7,
                                            height: 80.adaptSize,
                                            width: 80.adaptSize,
                                            radius: BorderRadius.circular(40.h),
                                            alignment: Alignment.center),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgAvatars3dAvatar24,
                                            height: 120.adaptSize,
                                            width: 120.adaptSize,
                                            alignment: Alignment.center)
                                      ])),
                              SizedBox(height: 8.v),
                              Text("lbl_t_n_b_n_l_g".tr,
                                  style: CustomTextStyles
                                      .bodyMediumAlikeWhiteA700),
                              SizedBox(height: 14.v),
                              _buildName(context),
                              SizedBox(height: 16.v),
                              _buildField(context),
                              SizedBox(height: 16.v),
                              _buildField1(context),
                              SizedBox(height: 98.v),
                              _buildNext(context)
                            ]))))));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 22.h),
        child: CustomTextFormField(
            controller: nameController,
            hintText: "lbl_name".tr,
            alignment: Alignment.centerRight));
  }

  /// Section Widget
  Widget _buildField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 22.h),
        child: CustomTextFormField(
            controller: fieldController,
            hintText: "lbl_age".tr,
            alignment: Alignment.centerRight));
  }

  /// Section Widget
  Widget _buildField1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 22.h),
        child: CustomTextFormField(
            controller: fieldController1,
            hintText: "lbl_sex".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            alignment: Alignment.centerRight,
            obscureText: true));
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
        width: 180.h,
        text: "lbl_next".tr,
        onPressed: () {
          onTapNext(context);
        });
  }

  /// Navigates to the homefiveScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.homefiveScreen);
  }
}
