import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/params/enum_appbar.dart';
import 'package:portfolio_website/core/utils/component/bottom_web_layout.dart';
import 'package:portfolio_website/core/utils/component/web_body_left_side.dart';
import 'package:portfolio_website/core/utils/res/app_size.dart';
import 'package:portfolio_website/core/utils/res/color.dart';
import 'package:portfolio_website/features/features_contact/presentation/screens/desktop/about_screen_desktop_layout.dart';
import 'package:portfolio_website/features/features_contact/presentation/screens/desktop/contact_screen_desktop_layout.dart';
import 'package:portfolio_website/features/features_contact/presentation/screens/desktop/resume_screen_desktop_layout.dart';

class MainPageBrowser extends StatefulWidget {
  const MainPageBrowser({super.key});

  @override
  State<MainPageBrowser> createState() => _MainPageBrowserState();
}

class _MainPageBrowserState extends State<MainPageBrowser> {
  WidgetMarker _selectedWidgetMarker = WidgetMarker.about;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appleWhite,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leadingWidth: AppSize.width(context),
        leading: Row(children: [
          SizedBox(width: 50),
          TextButton(
            onPressed: () {
              setState(() {
                _selectedWidgetMarker = WidgetMarker.about;
              });
            },
            child: const Text(
              "ABOUT",
              style: TextStyle(
                  color: Dark_Gray, fontWeight: FontWeight.w700, fontSize: 16),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(
                () {
                  _selectedWidgetMarker = WidgetMarker.resume;
                },
              );
            },
            child: const Text(
              "RESUME",
              style: TextStyle(
                  color: Dark_Gray, fontWeight: FontWeight.w700, fontSize: 16),
            ),
          ),
          AbsorbPointer(
            child: TextButton(
              onPressed: () {
                setState(() {
                  _selectedWidgetMarker = WidgetMarker.portfolio;
                });
              },
              child: const Text(
                softWrap: true,
                "PORTFOLIO",
                style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: Dark_Gray,
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
            ),
          ),
          AbsorbPointer(
            child: TextButton(
              onPressed: () {
                setState(() {
                  _selectedWidgetMarker = WidgetMarker.blog;
                });
              },
              child: const Text(
                "BLOG",
                style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: Dark_Gray,
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _selectedWidgetMarker = WidgetMarker.contact;
              });
            },
            child: const Text(
              "CONTACT",
              style: TextStyle(
                  color: Dark_Gray, fontWeight: FontWeight.w700, fontSize: 16),
            ),
          ),
        ]),
        backgroundColor: appleWhite,
        foregroundColor: appleWhite,
      ),
      body: Row(
        children: [
          const WebBodyLeftSide(),
          SizedBox(
            height: AppSize.height(context),
            width: AppSize.width(context) * 0.7,
            child: SingleChildScrollView(
              // headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [],
              child: Column(
                // shrinkWrap: true,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _getCustomContainer(),
                  BottomWebLayout(context: context),
                  // bodyWebPage(context),
                ],
              ),
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _getCustomContainer() {
    switch (_selectedWidgetMarker) {
      case WidgetMarker.about:
        return const AboutScreenWebLayout();
      case WidgetMarker.resume:
        return const ResumeScreenWebLayout();
/*      case WidgetMarker.portfolio:
        return Container(
          width: AppSize.width(context),
          height: AppSize.height(context),
          color: Colors.pink,
        );
      case WidgetMarker.blog:
        return Container(
          width: AppSize.width(context),
          height: AppSize.height(context),
          color: Colors.deepOrange,
        );*/
      case WidgetMarker.contact:
        return ContactScreenWebLayout();
      default:
        throw Exception("page not found");
    }
  }
}
