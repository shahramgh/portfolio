import 'package:flutter/material.dart';
import 'package:portfolio_website/core/params/enum_appbar.dart';
import 'package:portfolio_website/core/utils/component/bottom_tablet_layout.dart';
import 'package:portfolio_website/core/utils/component/tablet_body_left_side.dart';
import 'package:portfolio_website/core/utils/res/app_size.dart';
import 'package:portfolio_website/core/utils/res/color.dart';
import 'package:portfolio_website/core/utils/res/string.dart';
import 'package:portfolio_website/features/features_contact/presentation/screens/tablet/about_screen_tablet_layout.dart';
import 'package:portfolio_website/features/features_contact/presentation/screens/tablet/contact_screen_tablet_layout.dart';
import 'package:portfolio_website/features/features_contact/presentation/screens/tablet/resume_screen_desktop_layout.dart';

class MainPageTablet extends StatefulWidget {
  const MainPageTablet({super.key});

  @override
  State<MainPageTablet> createState() => _MainPageTabletState();
}

class _MainPageTabletState extends State<MainPageTablet> {
  WidgetMarker _selectedWidgetMarker = WidgetMarker.about;

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
                child: const Text("ABOUT",
                    style: const TextStyle(color: Dark_Gray)),
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
                child: const Text("RESUME",
                    style: const TextStyle(color: Dark_Gray)),
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
                      style: const TextStyle(decoration: TextDecoration.lineThrough,color: Dark_Gray)),
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
                  child: const Text("BLOG",
                      style: const TextStyle(decoration: TextDecoration.lineThrough,color: Dark_Gray)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    _selectedWidgetMarker = WidgetMarker.contact;
                  });
                  Navigator.pop(context);
                },
                child: const Text("CONTACT",
                    style: const TextStyle(color: Dark_Gray)),
              ),
            ),
            BottomTabletLayout(
              context: context,
            )
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(size: 35,color: kPrimaryLabelColor),
        scrolledUnderElevation: 0,
        backgroundColor: appleWhite,
      ),
      body: SizedBox(
        width: AppSize.width(context),
        child: NestedScrollView(
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) => [],
          body: ListView(
            // shrinkWrap: true,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxHeight: double.infinity,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 15.0, top: 20, left: 20),
                  child: _getCustomContainer(),
                ),
              ),
              BottomTabletLayout(context: context),
              // bodyWebPage(context),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _getCustomContainer() {
    switch (_selectedWidgetMarker) {
      case WidgetMarker.about:
        return const AboutScreenTabletLayout();
      case WidgetMarker.resume:
        return const ResumeScreenTabletLayout();
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
        return ContactScreenTabletLayout();
      default:
        throw Exception("page not found");
    }
  }
}
