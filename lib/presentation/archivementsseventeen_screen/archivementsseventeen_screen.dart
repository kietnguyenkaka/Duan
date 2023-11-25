import '../archivementsseventeen_screen/widgets/archivementsseventeen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:vip_app/core/app_export.dart';
import 'package:vip_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:vip_app/widgets/app_bar/appbar_subtitle_six.dart';
import 'package:vip_app/widgets/app_bar/appbar_title_image.dart';
import 'package:vip_app/widgets/app_bar/custom_app_bar.dart';
import 'package:vip_app/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class ArchivementsseventeenScreen extends StatelessWidget {
  ArchivementsseventeenScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 8.v),
                child: Column(children: [
                  SizedBox(height: 18.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    _buildArchivementsSeventeen(context),
                    SizedBox(height: 7.v),
                    Container(
                        height: 92.v,
                        width: double.maxFinite,
                        decoration:
                            BoxDecoration(color: appTheme.blueGray90003))
                  ])))
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 25.h, right: 22.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 3.v, bottom: 28.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: Row(children: [
          AppbarTitleImage(imagePath: ImageConstant.imgBadge24Outline),
          AppbarSubtitleSix(
              text: "msg_danh_hi_u_c_a_t_i".tr,
              margin: EdgeInsets.only(left: 11.h, top: 3.v, bottom: 5.v))
        ]));
  }

  /// Section Widget
  Widget _buildArchivementsSeventeen(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.h),
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 189.v,
                crossAxisCount: 2,
                mainAxisSpacing: 0.h,
                crossAxisSpacing: 0.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 8,
            itemBuilder: (context, index) {
              return ArchivementsseventeenItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
