import 'package:flutter/material.dart';
import 'package:portfolio_website/features/features_contact/presentation/screens/desktop/main_page_browser_layout.dart';
import 'package:portfolio_website/features/features_contact/presentation/screens/mobile/main_page_mobile_layout.dart';
import 'package:portfolio_website/features/features_contact/presentation/screens/tablet/main_page_tablet_layout.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AppRouter {
  static const String homePage = 'homePage';

  static Route<dynamic> onGeneratedRoute(RouteSettings setting) {
    switch (setting.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (_) => ResponsiveBuilder(
              builder: (BuildContext context, SizingInformation information) {
                switch (information.deviceScreenType) {
                  case DeviceScreenType.desktop:
                    return const MainPageBrowser();
                  case DeviceScreenType.tablet:
                    return const MainPageTablet();
                  case DeviceScreenType.mobile:
                    return const MainPageMobile();
                  default:
                    throw Exception("page not found");
                }
              }),
        );
      default:
        throw Exception("page not found");
    }
  }
}
