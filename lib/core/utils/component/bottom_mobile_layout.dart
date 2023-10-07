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
      color: Transparent,
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
                      vertical: AppSize.height(context) * 0.015,
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