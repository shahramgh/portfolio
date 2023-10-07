import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/res/app_size.dart';
import 'package:portfolio_website/core/utils/res/color.dart';
import 'package:portfolio_website/core/utils/res/string.dart';
import 'package:portfolio_website/core/widgets/common_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TabletBodyLeftSide extends StatelessWidget {
  const TabletBodyLeftSide({
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
        Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        width: AppSize.width(context),
        height: AppSize.height(context)*0.5,
        alignment: Alignment.center,
        child: ClipRRect(
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadius.all(Radius.circular(15),),
          child: Image.asset("assets/images/avatar/image2.jpg",fit: BoxFit.cover),
        ),
      ),
            Container(
              color: appleWhite,
              child: Text(
                StringApp.leftSide,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: "Caveat", fontSize: 30,),
              ),
            ),
            Container(
              color: appleWhite,
              width: AppSize.width(context),
              height: AppSize.height(context)*0.2,
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
                        size: 5.screenWidth,
                        imageAddress:
                        "assets/images/social_media/githubTwo.png",
                        onTap: () {},
                      ),

                      SocialMedia(
                        size: 5.screenHeight,
                        onTap: () {},
                        imageAddress:
                        "assets/images/social_media/youtube.png",
                      ),
                      SocialMedia(
                        size: 5.screenWidth,
                        imageAddress:
                        "assets/images/social_media/linkedin.png",
                        onTap: () {},
                      ),
                      SocialMedia(
                        size: 5.screenWidth,
                        onTap: () {},
                        imageAddress:
                        "assets/images/social_media/twitter.png",
                      ),
                      SocialMedia(
                        size: 5.screenWidth,
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
                        size: 5.screenWidth,
                        imageAddress:
                        "assets/images/social_media/githubTwo.png",
                        onTap: () {},
                      ),
                      SocialMedia(
                        size: 5.screenWidth,
                        imageAddress:
                        "assets/images/social_media/stack_overflow.png",
                        onTap: () {},
                      ),
                      SocialMedia(
                        size: 5.screenWidth,
                        onTap: () {},
                        imageAddress:
                        "assets/images/social_media/youtube.png",
                      ),
                      SocialMedia(
                        size: 5.screenWidth,
                        imageAddress:
                        "assets/images/social_media/linkedin.png",
                        onTap: () {},
                      ),
                      SocialMedia(
                        size: 5.screenWidth,
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
                        size: 5.screenWidth,
                        imageAddress:
                        "assets/images/social_media/githubTwo.png",
                        onTap: () {},
                      ),
                      SocialMedia(
                        size: 5.screenWidth,
                        imageAddress:
                        "assets/images/social_media/stack_overflow.png",
                        onTap: () {},
                      ),
                      SocialMedia(
                        size: 5.screenWidth,
                        onTap: () {},
                        imageAddress:
                        "assets/images/social_media/youtube.png",
                      ),
                      SocialMedia(
                        size: 5.screenWidth,
                        imageAddress:
                        "assets/images/social_media/linkedin.png",
                        onTap: () {},
                      ),
                      SocialMedia(
                        size: 5.screenWidth,
                        onTap: () {},
                        imageAddress:
                        "assets/images/social_media/twitter.png",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}