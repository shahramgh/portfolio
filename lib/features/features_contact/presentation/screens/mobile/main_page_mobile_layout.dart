import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/params/enum_appbar.dart';
import 'package:portfolio_website/core/utils/res/app_size.dart';
import 'package:portfolio_website/core/utils/res/color.dart';
import 'package:portfolio_website/core/utils/res/string.dart';
import 'package:portfolio_website/features/features_contact/presentation/screens/mobile/about_screen_mobile_layout.dart';
import 'package:portfolio_website/features/features_contact/presentation/screens/mobile/contact_screen_mobile_layout.dart';
import 'package:portfolio_website/features/features_contact/presentation/screens/mobile/resume_screen_mobile_layout.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainPageMobile extends StatefulWidget {
  const MainPageMobile({super.key});

  @override
  State<MainPageMobile> createState() => _MainPageMobileState();
}

class _MainPageMobileState extends State<MainPageMobile> {
  WidgetMarker _selectedWidgetMarker = WidgetMarker.about;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: appleWhite,
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              DrawerHeader(
                padding: EdgeInsets.only(top: 50),
                decoration: const BoxDecoration(),
                child: Text(
                  StringApp.webTitle,
                  style: const TextStyle(fontFamily: "GreatVibes"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _selectedWidgetMarker = WidgetMarker.about;
                    });
                    Navigator.pop(context);
                  },
                  child: const Text("ABOUT",style: const TextStyle(color: Dark_Gray)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _selectedWidgetMarker = WidgetMarker.resume;
                    });
                    Navigator.pop(context);
                  },
                  child: const Text("RESUME",style: const TextStyle(color: Dark_Gray)),
                ),
              ),
              /*Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _selectedWidgetMarker = WidgetMarker.portfolio;
                    });
                    Navigator.pop(context);
                  },
                  child: const Text("PORTFOLIO",style: const TextStyle(color: Dark_Gray)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _selectedWidgetMarker = WidgetMarker.blog;
                    });
                    Navigator.pop(context);
                  },
                  child: const Text("BLOG",style: const TextStyle(color: Dark_Gray)),
                ),
              ),*/
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _selectedWidgetMarker = WidgetMarker.contact;
                    });
                    Navigator.pop(context);
                  },
                  child: const Text("CONTACT",style: const TextStyle(color: Dark_Gray)),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: appleWhite,
      ),
      body: NestedScrollView(
        scrollDirection: Axis.vertical,
        body: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: double.infinity.screenHeight),
          child: Column(
            /*mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,*/
            children: <Widget>[
              Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15.0, top: 20,left: 15),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: double.infinity),
                    child: Placeholder(color: appleWhite,
                        fallbackWidth: AppSize.width(context),
                        fallbackHeight: double.infinity,child: _getCustomContainer()),
                  ),
                ),
              ),
              bottomWebPage(context),
            ],
          ),
        ), headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>[],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _getCustomContainer() {
    switch (_selectedWidgetMarker) {
      case WidgetMarker.about:
        return const AboutScreenMobileLayout();
      case WidgetMarker.resume:
        return ResumeScreenMobileLayout();
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
        return ContactScreenMobileLayout();
      default:
        throw Exception("page not found");
    }
  }

  Widget bottomWebPage(BuildContext context) {
    return Container(
      width: AppSize.width(context),
      height: AppSize.height(context) * 0.1,
      color: appleWhite,
      child:  Expanded(
        flex: 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Expanded(
              flex: 8,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: AppSize.height(context) * 0.007,
                      horizontal: AppSize.width(context) * 0.015),
                  child: Text(
                    StringApp.appCopyRightFull,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontFamily: "Gruppo", inherit: true,),
                  ),
                ),
              ),
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}


