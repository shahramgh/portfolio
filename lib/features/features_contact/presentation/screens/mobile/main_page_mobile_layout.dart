import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/params/enum_appbar.dart';
import 'package:portfolio_website/core/utils/component/bottom_mobile_layout.dart';
import 'package:portfolio_website/core/utils/res/app_size.dart';
import 'package:portfolio_website/core/utils/res/color.dart';
import 'package:portfolio_website/core/utils/res/string.dart';
import 'package:portfolio_website/features/features_contact/presentation/screens/mobile/about_screen_mobile_layout.dart';
import 'package:portfolio_website/features/features_contact/presentation/screens/mobile/contact_screen_mobile_layout.dart';
import 'package:portfolio_website/features/features_contact/presentation/screens/mobile/resume_screen_mobile_layout.dart';

class MainPageMobile extends StatefulWidget {
  const MainPageMobile({super.key});

  @override
  State<MainPageMobile> createState() => _MainPageMobileState();
}

class _MainPageMobileState extends State<MainPageMobile> {
  WidgetMarker _selectedWidgetMarker = WidgetMarker.contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: appleWhite,
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: AppSize.width(context),
              height: AppSize.height(context) * 0.4,
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                child: Image.asset("assets/images/avatar/image2.jpg",
                    fit: BoxFit.contain),
              ),
            ),
            Text(
              StringApp.webTitle,
              style: const TextStyle(fontFamily: "GreatVibes"),
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
                child: const Text("ABOUT", style: TextStyle(color: Dark_Gray)),
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
                child: const Text("RESUME", style: TextStyle(color: Dark_Gray)),
              ),
            ),
            AbsorbPointer(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _selectedWidgetMarker = WidgetMarker.portfolio;
                    });
                    Navigator.pop(context);
                  },
                  child: const Text("PORTFOLIO",
                      style: TextStyle(color: Dark_Gray,decoration: TextDecoration.lineThrough,)),
                ),
              ),
            ),
            AbsorbPointer(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _selectedWidgetMarker = WidgetMarker.blog;
                    });
                    Navigator.pop(context);
                  },
                  child: const Text("BLOG", style: TextStyle(decoration: TextDecoration.lineThrough,color: Dark_Gray)),
                ),
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
                child: const Text(
                  "CONTACT",
                  style: TextStyle(color: Dark_Gray),
                ),
              ),
            ),
            BottomMobileLayout(context: context)
          ],
        ),
      ),
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: appleWhite,
      ),
      body: NestedScrollView(
        scrollDirection: Axis.vertical,
        body: _selectedWidgetMarker==WidgetMarker.contact?SingleChildScrollView(child: _getCustomContainer()):_getCustomContainer(),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
            [],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _getCustomContainer() {
    switch (_selectedWidgetMarker) {
      case WidgetMarker.about:
        return const AboutScreenMobileLayout();
      case WidgetMarker.resume:
        return ResumeScreenMobileLayout();
      case WidgetMarker.portfolio:
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
        );
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
      child: Expanded(
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
                      fontFamily: "Gruppo",
                      inherit: true,
                    ),
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
