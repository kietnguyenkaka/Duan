import 'package:flutter/material.dart';
import 'package:vip_app/core/app_export.dart';
import 'package:vip_app/presentation/discoverten_container_page/discoverten_container_page.dart';
import 'package:vip_app/presentation/homefour_page/homefour_page.dart';
import 'package:vip_app/presentation/musicsix_page/musicsix_page.dart';
import 'package:vip_app/presentation/notificationeighteen_page/notificationeighteen_page.dart';
import 'package:vip_app/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class DiscovertenContainer1Screen extends StatelessWidget {
  DiscovertenContainer1Screen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.discovertenContainerPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.discovertenContainerPage:
        return DiscovertenContainerPage();
      case AppRoutes.musicsixPage:
        return MusicsixPage();
      case AppRoutes.homefourPage:
        return HomefourPage();
      case AppRoutes.notificationeighteenPage:
        return NotificationeighteenPage();
      default:
        return DiscovertenContainerPage();
    }
  }
}
