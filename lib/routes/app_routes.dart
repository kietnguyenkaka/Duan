import 'package:flutter/material.dart';
import 'package:vip_app/presentation/loadingscreenone_screen/loadingscreenone_screen.dart';
import 'package:vip_app/presentation/inputnametwo_screen/inputnametwo_screen.dart';
import 'package:vip_app/presentation/suggestthree_screen/suggestthree_screen.dart';
import 'package:vip_app/presentation/homefive_screen/homefive_screen.dart';
import 'package:vip_app/presentation/musicplaylistseven_screen/musicplaylistseven_screen.dart';
import 'package:vip_app/presentation/musicsongeight_screen/musicsongeight_screen.dart';
import 'package:vip_app/presentation/coutdownmusicnine_screen/coutdownmusicnine_screen.dart';
import 'package:vip_app/presentation/suggestfourteen_screen/suggestfourteen_screen.dart';
import 'package:vip_app/presentation/discoverten_container1_screen/discoverten_container1_screen.dart';
import 'package:vip_app/presentation/tipseleven_screen/tipseleven_screen.dart';
import 'package:vip_app/presentation/enterthetipstwelve_screen/enterthetipstwelve_screen.dart';
import 'package:vip_app/presentation/sleepmodethirteen_screen/sleepmodethirteen_screen.dart';
import 'package:vip_app/presentation/sleepreportfifteen_screen/sleepreportfifteen_screen.dart';
import 'package:vip_app/presentation/profilesixteen_screen/profilesixteen_screen.dart';
import 'package:vip_app/presentation/feedbacksnineteen_screen/feedbacksnineteen_screen.dart';
import 'package:vip_app/presentation/helptwenty_screen/helptwenty_screen.dart';
import 'package:vip_app/presentation/archivementsseventeen_screen/archivementsseventeen_screen.dart';
import 'package:vip_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loadingscreenoneScreen = '/loadingscreenone_screen';

  static const String inputnametwoScreen = '/inputnametwo_screen';

  static const String suggestthreeScreen = '/suggestthree_screen';

  static const String homefourPage = '/homefour_page';

  static const String homefiveScreen = '/homefive_screen';

  static const String musicsixPage = '/musicsix_page';

  static const String musicplaylistsevenScreen = '/musicplaylistseven_screen';

  static const String musicsongeightScreen = '/musicsongeight_screen';

  static const String coutdownmusicnineScreen = '/coutdownmusicnine_screen';

  static const String suggestfourteenScreen = '/suggestfourteen_screen';

  static const String discovertenContainerPage = '/discoverten_container_page';

  static const String discovertenContainer1Screen =
      '/discoverten_container1_screen';

  static const String tipselevenScreen = '/tipseleven_screen';

  static const String enterthetipstwelveScreen = '/enterthetipstwelve_screen';

  static const String sleepmodethirteenScreen = '/sleepmodethirteen_screen';

  static const String sleepreportfifteenScreen = '/sleepreportfifteen_screen';

  static const String notificationeighteenPage = '/notificationeighteen_page';

  static const String profilesixteenScreen = '/profilesixteen_screen';

  static const String feedbacksnineteenScreen = '/feedbacksnineteen_screen';

  static const String helptwentyScreen = '/helptwenty_screen';

  static const String archivementsseventeenScreen =
      '/archivementsseventeen_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loadingscreenoneScreen: (context) => LoadingscreenoneScreen(),
    inputnametwoScreen: (context) => InputnametwoScreen(),
    suggestthreeScreen: (context) => SuggestthreeScreen(),
    homefiveScreen: (context) => HomefiveScreen(),
    musicplaylistsevenScreen: (context) => MusicplaylistsevenScreen(),
    musicsongeightScreen: (context) => MusicsongeightScreen(),
    coutdownmusicnineScreen: (context) => CoutdownmusicnineScreen(),
    suggestfourteenScreen: (context) => SuggestfourteenScreen(),
    discovertenContainer1Screen: (context) => DiscovertenContainer1Screen(),
    tipselevenScreen: (context) => TipselevenScreen(),
    enterthetipstwelveScreen: (context) => EnterthetipstwelveScreen(),
    sleepmodethirteenScreen: (context) => SleepmodethirteenScreen(),
    sleepreportfifteenScreen: (context) => SleepreportfifteenScreen(),
    profilesixteenScreen: (context) => ProfilesixteenScreen(),
    feedbacksnineteenScreen: (context) => FeedbacksnineteenScreen(),
    helptwentyScreen: (context) => HelptwentyScreen(),
    archivementsseventeenScreen: (context) => ArchivementsseventeenScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
