import '../homefive_screen/widgets/homefive_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:vip_app/core/app_export.dart';
import 'package:vip_app/widgets/app_bar/appbar_subtitle_seven.dart';
import 'package:vip_app/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:vip_app/widgets/app_bar/custom_app_bar.dart';
import 'package:vip_app/widgets/custom_bottom_bar.dart';
import 'package:vip_app/widgets/custom_elevated_button.dart';

class HomefiveScreen extends StatelessWidget {
  HomefiveScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 8.v),
          child: Column(
            children: [
              SizedBox(height: 40.v),
              _buildAvatarsdAvatarTwentyFour(context),
              SizedBox(height: 36.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.v),
                        child: Text(
                          "msg_h_y_ch_n_1_b_i_nh_c".tr,
                          style:
                              CustomTextStyles.bodyLargeBeVietnamProWhiteA700,
                        ),
                      ),
                      _buildHYChNBINhC(context),
                      SizedBox(height: 72.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.v),
                          child: Text(
                            "msg_bi_u_gi_c_ng".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ),
                      SizedBox(height: 11.v),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAvatarsdAvatarTwentyFour(BuildContext context) {
    return Container(
      width: 340.h,
      margin: EdgeInsets.symmetric(horizontal: 17.h),
      padding: EdgeInsets.symmetric(vertical: 16.v),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder24,
        image: DecorationImage(
          image: AssetImage("assets/images/anh.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: CustomAppBar(
        height: 64.v,
        leadingWidth: 104.h,
        leading: Container(
          height: 64.adaptSize,
          width: 64.adaptSize,
          margin: EdgeInsets.only(left: 40.h),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle764x64,
                height: 64.adaptSize,
                width: 64.adaptSize,
                radius: BorderRadius.circular(
                  32.h,
                ),
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgAvatars3dAvatar24,
                height: 64.adaptSize,
                width: 64.adaptSize,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Column(
            children: [
              AppbarSubtitleSeven(
                text: "lbl_hi".tr,
                margin: EdgeInsets.only(right: 40.h),
              ),
              AppbarSubtitleThree(
                text: "lbl_thuan".tr,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHYChNBINhC(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 13.h),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(top: 44.v),
        child: Row(
          children: [
            _buildTwo(
              context,
              image: ImageConstant.imgRectangle11,
              spaceNoise: "msg_riding_in_the_horse".tr,
            ),
            SizedBox(width: 8.v),
            _buildTwo(
              context,
              image: ImageConstant.imgRectangle1197x132,
              spaceNoise: "lbl_space_noise".tr,
            ),
            SizedBox(width: 8.v),
            _buildTwo(
              context,
              image: ImageConstant.imgRectangle111,
              spaceNoise: "lbl_green_mood".tr,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWeeklySleepInfo(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 11.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "lbl_weekly_sleep".tr,
              style: CustomTextStyles.bodyLargeOpenSansWhiteA700,
            ),
          ),
          SizedBox(height: 17.v),
          CustomImageView(
            imagePath: ImageConstant.imgScreenShot20230114,
            height: 166.v,
            width: 313.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSegmentedControl(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 8.h,
        right: 4.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 2.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 12.v,
              bottom: 10.v,
            ),
            child: Text(
              "lbl_days".tr,
              style: CustomTextStyles.bodyMediumInter,
            ),
          ),
          CustomElevatedButton(
            height: 40.v,
            width: 89.h,
            text: "lbl_weeks".tr,
            margin: EdgeInsets.only(left: 28.h),
            buttonStyle: CustomButtonStyles.fillBlueA,
            buttonTextStyle: CustomTextStyles.bodyMediumInterBlack90001,
          ),
          Opacity(
            opacity: 0.3,
            child: Container(
              height: 12.v,
              width: 1.h,
              margin: EdgeInsets.symmetric(vertical: 14.v),
              decoration: BoxDecoration(
                color: appTheme.indigo50.withOpacity(0.32),
                borderRadius: BorderRadius.circular(
                  1.h,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 19.h,
              top: 11.v,
              bottom: 11.v,
            ),
            child: Text(
              "lbl_months".tr,
              style: CustomTextStyles.bodyMediumInter,
            ),
          ),
          Opacity(
            opacity: 0.3,
            child: Container(
              height: 12.v,
              width: 1.h,
              margin: EdgeInsets.only(
                left: 19.h,
                top: 14.v,
                bottom: 14.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.indigo50.withOpacity(0.32),
                borderRadius: BorderRadius.circular(
                  1.h,
                ),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 11.v,
              right: 8.h,
              bottom: 11.v,
            ),
            child: Text(
              "lbl_all".tr,
              style: CustomTextStyles.bodyMediumInter,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDarkXTabBar(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 31.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillBlueGray,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 44.v),
          CustomImageView(
            imagePath: ImageConstant.imgProfile,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }

  /// Common widget
  Widget _buildTwo(
    BuildContext context, {
    required String image,
    required String spaceNoise,
  }) {
    return Column(
      children: [
        CustomImageView(
          imagePath: image,
          height: 97.v,
          width: 132.h,
          radius: BorderRadius.circular(
            16.h,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          spaceNoise,
          style: theme.textTheme.labelLarge!.copyWith(
            color: appTheme.whiteA700,
          ),
        ),
      ],
    );
  }
}
