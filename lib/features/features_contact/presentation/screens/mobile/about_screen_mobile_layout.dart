import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/res/app_size.dart';
import 'package:portfolio_website/core/utils/res/color.dart';
import 'package:portfolio_website/core/widgets/common_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutScreenMobileLayout extends StatelessWidget {
  const AboutScreenMobileLayout({
    Key? key,
  }) : super(key: key);

  final String _text = '''
When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into the inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me.

When I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath of that universal love which bears and sustains us, as it floats around us in an eternity of bliss; and then, my friend, when darkness overspreads my eyes, and heaven and earth seem to dwell in my soul and absorb its power, like the form of a beloved mistress, then I often think with longing, Oh, would I could describe these conceptions, could impress upon paper all that is living so full and warm within me, that it might be the mirror of my soul, as my soul is the mirror of the infinite God!
              ''';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.screenWidth,
      height: double.infinity.screenHeight,
      color: appleWhite,
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: AppSize.height(context) * 0.015,
                      horizontal: AppSize.width(context) * 0.015),
                  child: ListTile(
                    title: Text("Full Name: ",
                        style: TextStyle(
                            color: PortfolioText,
                            fontSize: AppSize.height(context) * 0.025,
                            fontWeight: FontWeight.w700)),
                    subtitle: Text(
                      "Shahram Ghorbani Kalkhajeh",
                      style: TextStyle(
                          color: PortfolioTextLightGray,
                          fontSize: AppSize.height(context) * 0.015,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: AppSize.height(context) * 0.015,
                      horizontal: AppSize.width(context) * 0.015),
                  child: ListTile(
                    title: Text("Birthday ",
                        style: TextStyle(
                            color: PortfolioText,
                            fontSize: AppSize.height(context) * 0.025,
                            fontWeight: FontWeight.w700)),
                    subtitle: Text(
                      "28 August 1988",
                      style: TextStyle(
                          color: PortfolioTextLightGray,
                          fontSize: AppSize.height(context) * 0.015,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: AppSize.height(context) * 0.015,
                      horizontal: AppSize.width(context) * 0.015),
                  child: ListTile(
                    title: Text("Job ",
                        style: TextStyle(
                            color: PortfolioText,
                            fontSize: AppSize.height(context) * 0.025,
                            fontWeight: FontWeight.w700)),
                    subtitle: Text(
                      "Freelancer",
                      style: TextStyle(
                          color: PortfolioTextLightGray,
                          fontSize: AppSize.height(context) * 0.015,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: AppSize.height(context) * 0.015,
                      horizontal: AppSize.width(context) * 0.015),
                  child: ListTile(
                    title: Text("Website",
                        style: TextStyle(
                            color: PortfolioText,
                            fontSize: AppSize.height(context) * 0.025,
                            fontWeight: FontWeight.w700)),
                    subtitle: Text(
                      "https://www.shahram-ghorbani.com",
                      style: TextStyle(
                          color: PortfolioTextLightGray,
                          fontSize: AppSize.height(context) * 0.015,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: AppSize.height(context) * 0.015,
                      horizontal: AppSize.width(context) * 0.015),
                  child: ListTile(
                    title: Text(
                      "Email ",
                      style: TextStyle(
                          color: PortfolioText,
                          fontSize: AppSize.height(context) * 0.025,
                          fontWeight: FontWeight.w700),
                    ),
                    subtitle: Text(
                      "shahram.ghorbani.kalkhajeh@gmail.com",
                      style: TextStyle(
                          color: PortfolioTextLightGray,
                          fontSize: AppSize.height(context) * 0.018,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              const Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSize.height(context)*0.01),
            child: ListTile(
              title: Text("I'm Developer",
                  style: TextStyle(
                      color: PortfolioText,
                      fontSize: AppSize.height(context) * 0.025,
                      fontWeight: FontWeight.bold)),
              subtitle: Text.rich(
                  TextSpan(
                    spellOut: true,
                    style: TextStyle(
                        fontSize: AppSize.height(context) * 0.015,
                        inherit: true,
                        overflow: TextOverflow.clip,
                        color: PortfolioTextLightGray),
                    children: const [],
                    text: _text,
                  ),
                  textAlign: TextAlign.justify,
                  softWrap: true,
                  textDirection: TextDirection.ltr),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: AppSize.height(context)*0.1),
            child: const Column(
              children: [
                SkillPercentIndicatorItem(
                  title: "Flutter",
                  percent: 0.90,
                  width: 0.8,
                ),
                SkillPercentIndicatorItem(
                  title: "Dart",
                  percent: 0.80,
                  width: 0.8,
                ),
                SkillPercentIndicatorItem(
                  title: "Java",
                  percent: 0.60,
                  width: 0.8,
                ),
                SkillPercentIndicatorItem(
                  title: "Android",
                  percent: 0.70,
                  width: 0.8,
                ),
                SkillPercentIndicatorItem(
                  title: "MongoDB",
                  percent: 0.50,
                  width: 0.8,
                ),
                SkillPercentIndicatorItem(
                  title: "Python",
                  percent: 0.50,
                  width: 0.8,
                ),
                SkillPercentIndicatorItem(
                  title: "Photoshop",
                  percent: 0.50,
                  width: 0.8,
                ),
                SkillPercentIndicatorItem(
                  title: "Illustrator",
                  percent: 0.50,
                  width: 0.8,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
