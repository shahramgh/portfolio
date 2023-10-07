import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/res/app_size.dart';
import 'package:portfolio_website/core/utils/res/color.dart';
import 'package:portfolio_website/core/utils/res/string.dart';
import 'package:portfolio_website/core/widgets/common_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WebBodyLeftSide extends StatelessWidget {
  const WebBodyLeftSide({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.height(context),
      width: AppSize.width(context)*0.3,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 6,
              child: Placeholder(
                color: appleWhite,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  width: AppSize.width(context),
                  height: AppSize.height(context),
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15),),
                    child: Image.asset("assets/images/avatar/image2.jpg",fit: BoxFit.contain),
                  ),
                ),
              ),
            ),
            Container(
              color: appleWhite,
              alignment: Alignment.center,
              child: Text(
                StringApp.leftSide,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: "Caveat", fontSize: 30,),
              ),
            ),
            Expanded(
              flex: 2,
              child: Placeholder(
                color: appleWhite,
                fallbackWidth: AppSize.width(context),
                fallbackHeight: AppSize.height(context),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.center,
                  mainAxisAlignment:
                  MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.center,
                      children: [
                        SocialMedia(
                          size: 6.screenWidth,
                          imageAddress:
                          "assets/images/social_media/githubTwo.png",
                          onTap: () {},
                        ),
                        SocialMedia(
                          size: 6.screenWidth,
                          imageAddress:
                          "assets/images/social_media/stack_overflow.png",
                          onTap: () {},
                        ),
                        SocialMedia(
                          size: 6.screenWidth,
                          onTap: () {},
                          imageAddress:
                          "assets/images/social_media/youtube.png",
                        ),
                        SocialMedia(
                          size: 6.screenWidth,
                          imageAddress:
                          "assets/images/social_media/linkedin.png",
                          onTap: () {},
                        ),
                        SocialMedia(
                          size: 6.screenWidth,
                          onTap: () {},
                          imageAddress:
                          "assets/images/social_media/twitter.png",
                        ),
                        SocialMedia(
                          size: 6.screenWidth,
                          onTap: () {},
                          imageAddress:
                          "assets/images/social_media/instagram.png",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.center,
                      children: [
                        SocialMedia(
                          size: 6.screenWidth,
                          imageAddress:
                          "assets/images/social_media/githubTwo.png",
                          onTap: () {},
                        ),
                        SocialMedia(
                          size: 6.screenWidth,
                          imageAddress:
                          "assets/images/social_media/stack_overflow.png",
                          onTap: () {},
                        ),
                        SocialMedia(
                          size: 6.screenWidth,
                          onTap: () {},
                          imageAddress:
                          "assets/images/social_media/youtube.png",
                        ),
                        SocialMedia(
                          size: 6.screenWidth,
                          imageAddress:
                          "assets/images/social_media/linkedin.png",
                          onTap: () {},
                        ),
                        SocialMedia(
                          size: 6.screenWidth,
                          onTap: () {},
                          imageAddress:
                          "assets/images/social_media/twitter.png",
                        ),
                        SocialMedia(
                          size: 6.screenWidth,
                          onTap: () {},
                          imageAddress:
                          "assets/images/social_media/instagram.png",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}