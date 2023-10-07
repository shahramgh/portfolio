import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/app_router.dart';
import 'package:portfolio_website/core/utils/res/color.dart';
import 'package:portfolio_website/features/features_contact/presentation/screens/desktop/main_page_browser_layout.dart';
import 'package:portfolio_website/features/features_contact/presentation/screens/mobile/main_page_mobile_layout.dart';
import 'package:portfolio_website/features/features_contact/presentation/screens/tablet/main_page_tablet_layout.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
        preferDesktop: true,
        builder: (BuildContext context) => MaterialApp(
          useInheritedMediaQuery: true,
              debugShowCheckedModeBanner: false,
              title: 'SGK',
              theme: ThemeData(
                scrollbarTheme: ScrollbarThemeData(),
                elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Iron_Gray,
                    foregroundColor: appleWhite,
                    textStyle: TextStyle(color: appleWhite),
                  ),
                ),
                colorScheme: ColorScheme.fromSeed(seedColor: appleWhite),
                backgroundColor: appleWhite,
                useMaterial3: true,
                fontFamily: "LexendDeca",
              ),
              home: ConstrainedBox(constraints: BoxConstraints(maxHeight: double.infinity),
                child: ResponsiveBuilder(builder:
                    (BuildContext context, SizingInformation information) {
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
              ),
              initialRoute: AppRouter.homePage,
              onGenerateRoute: AppRouter.onGeneratedRoute,
            ),);
  }
}
