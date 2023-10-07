import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/res/app_size.dart';
import 'package:portfolio_website/core/widgets/common_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResumeScreenMobileLayout extends StatelessWidget {
  const ResumeScreenMobileLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bodyWebPage(context);
  }

  Widget bodyWebPage(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: double.infinity.screenHeight),
      child: ListView(
        children: const [
          MyStepper(icon: CupertinoIcons.airplane, list: [
            MyStepperItem(
              icon: CupertinoIcons.circle_filled,
              title: "Abc University of Los Angeles",
              label: "2010 - Present",
              subTitle:
              "Morbi nulla arcu, pellentesque sed egestas in, tempor eget felis. Nullam tincidunt augue in leo feugiat, quis interdum nisi sollicitudin. Suspendisse vulputate diam sit amet rutrum dictum. Donec tempus a lectus quis luctus. Vivamus sed maximus justo, sed aliquet purus. Etiam ut velit gravida, mollis turpis nec, tristique erat.",
            ),
            MyStepperItem(
              icon: CupertinoIcons.circle_filled,
              title: "Abc University of Los Angeles",
              label: "2010 - Present",
              subTitle:
              "Morbi nulla arcu, pellentesque sed egestas in, tempor eget felis. Nullam tincidunt augue in leo feugiat, quis interdum nisi sollicitudin. Suspendisse vulputate diam sit amet rutrum dictum. Donec tempus a lectus quis luctus. Vivamus sed maximus justo, sed aliquet purus. Etiam ut velit gravida, mollis turpis nec, tristique erat.",
            ),
            MyStepperItem(
              icon: CupertinoIcons.circle_filled,
              title: "Abc University of Los Angeles",
              label: "2010 - Present",
              subTitle:
              "Morbi nulla arcu, pellentesque sed egestas in, tempor eget felis. Nullam tincidunt augue in leo feugiat, quis interdum nisi sollicitudin. Suspendisse vulputate diam sit amet rutrum dictum. Donec tempus a lectus quis luctus. Vivamus sed maximus justo, sed aliquet purus. Etiam ut velit gravida, mollis turpis nec, tristique erat.",
            ),
            MyStepperItem(
              icon: CupertinoIcons.circle_filled,
              title: "Abc University of Los Angeles",
              label: "2010 - Present",
              subTitle:
              "Morbi nulla arcu, pellentesque sed egestas in, tempor eget felis. Nullam tincidunt augue in leo feugiat, quis interdum nisi sollicitudin. Suspendisse vulputate diam sit amet rutrum dictum. Donec tempus a lectus quis luctus. Vivamus sed maximus justo, sed aliquet purus. Etiam ut velit gravida, mollis turpis nec, tristique erat.",
            ),
          ]),
          MyStepper(icon: CupertinoIcons.ant, list: [
            MyStepperItem(
              icon: CupertinoIcons.circle_filled,
              title: "Abc University of Los Angeles",
              label: "2010 - Present",
              subTitle:
              "Morbi nulla arcu, pellentesque sed egestas in, tempor eget felis. Nullam tincidunt augue in leo feugiat, quis interdum nisi sollicitudin. Suspendisse vulputate diam sit amet rutrum dictum. Donec tempus a lectus quis luctus. Vivamus sed maximus justo, sed aliquet purus. Etiam ut velit gravida, mollis turpis nec, tristique erat.",
            ),
            MyStepperItem(
              icon: CupertinoIcons.circle_filled,
              title: "Abc University of Los Angeles",
              label: "2010 - Present",
              subTitle:
              "Morbi nulla arcu, pellentesque sed egestas in, tempor eget felis. Nullam tincidunt augue in leo feugiat, quis interdum nisi sollicitudin. Suspendisse vulputate diam sit amet rutrum dictum. Donec tempus a lectus quis luctus. Vivamus sed maximus justo, sed aliquet purus. Etiam ut velit gravida, mollis turpis nec, tristique erat.",
            ),
            MyStepperItem(
              icon: CupertinoIcons.circle_filled,
              title: "Abc University of Los Angeles",
              label: "2010 - Present",
              subTitle:
              "Morbi nulla arcu, pellentesque sed egestas in, tempor eget felis. Nullam tincidunt augue in leo feugiat, quis interdum nisi sollicitudin. Suspendisse vulputate diam sit amet rutrum dictum. Donec tempus a lectus quis luctus. Vivamus sed maximus justo, sed aliquet purus. Etiam ut velit gravida, mollis turpis nec, tristique erat.",
            ),
            MyStepperItem(
              icon: CupertinoIcons.circle_filled,
              title: "Abc University of Los Angeles",
              label: "2010 - Present",
              subTitle:
              "Morbi nulla arcu, pellentesque sed egestas in, tempor eget felis. Nullam tincidunt augue in leo feugiat, quis interdum nisi sollicitudin. Suspendisse vulputate diam sit amet rutrum dictum. Donec tempus a lectus quis luctus. Vivamus sed maximus justo, sed aliquet purus. Etiam ut velit gravida, mollis turpis nec, tristique erat.",
            ),
          ],),
        ],
      ),
    );
  }
}
