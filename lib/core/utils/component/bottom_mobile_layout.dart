import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/res/app_size.dart';
import 'package:portfolio_website/core/utils/res/color.dart';
import 'package:portfolio_website/core/utils/res/string.dart';
import 'package:portfolio_website/core/widgets/common_widget.dart';

class BottomMobileLayout extends StatelessWidget {
  const BottomMobileLayout({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.width(context),
      height: AppSize.height(context) * 0.2,
      color: appleWhite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 6,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    width: AppSize.width(context) * 0.25,
                    color: appleWhite,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: appleWhite,
                    alignment: Alignment.center,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  SocialMedia(
                                    imageAddress:
                                    "assets/images/social_media/githubTwo.png",
                                    onTap: () {},
                                  ),
                                  SocialMedia(
                                    imageAddress:
                                    "assets/images/social_media/stack_overflow.png",
                                    onTap: () {},
                                  ),
                                  SocialMedia(
                                    onTap: () {},
                                    imageAddress:
                                    "assets/images/social_media/youtube.png",
                                  ),
                                  SocialMedia(
                                    imageAddress:
                                    "assets/images/social_media/linkedin.png",
                                    onTap: () {},
                                  ),
                                  SocialMedia(
                                    onTap: () {},
                                    imageAddress:
                                    "assets/images/social_media/twitter.png",
                                  ),
                                  SocialMedia(
                                    onTap: () {},
                                    imageAddress:
                                    "assets/images/social_media/instagram.png",
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SocialMedia(
                                    imageAddress:
                                    "assets/images/social_media/githubTwo.png",
                                    onTap: () {},
                                  ),
                                  SocialMedia(
                                    imageAddress:
                                    "assets/images/social_media/stack_overflow.png",
                                    onTap: () {},
                                  ),
                                  SocialMedia(
                                    onTap: () {},
                                    imageAddress:
                                    "assets/images/social_media/youtube.png",
                                  ),
                                  SocialMedia(
                                    imageAddress:
                                    "assets/images/social_media/linkedin.png",
                                    onTap: () {},
                                  ),
                                  SocialMedia(
                                    onTap: () {},
                                    imageAddress:
                                    "assets/images/social_media/twitter.png",
                                  ),
                                  SocialMedia(
                                    onTap: () {},
                                    imageAddress:
                                    "assets/images/social_media/instagram.png",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: AppSize.width(context) * 0.25,
                    color: appleWhite,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
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
                          vertical: AppSize.height(context) * 0.015,
                          horizontal: AppSize.width(context) * 0.015),
                      child: Text(
                        StringApp.appCopyRightFull,
                        style: const TextStyle(
                            fontFamily: "Gruppo", inherit: true),
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
        ],
      ),
    );
  }
}