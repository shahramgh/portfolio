import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/res/app_size.dart';
import 'package:portfolio_website/core/utils/res/color.dart';
import 'package:portfolio_website/core/widgets/common_widget.dart';
import 'package:portfolio_website/generated/assets.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResumeScreenWebLayout extends StatelessWidget {
  const ResumeScreenWebLayout({
    Key? key,
  }) : super(key: key);

  final String _text = '''
When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into the inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me.

When I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath of that universal love which bears and sustains us, as it floats around us in an eternity of bliss; and then, my friend, when darkness overspreads my eyes, and heaven and earth seem to dwell in my soul and absorb its power, like the form of a beloved mistress, then I often think with longing, Oh, would I could describe these conceptions, could impress upon paper all that is living so full and warm within me, that it might be the mirror of my soul, as my soul is the mirror of the infinite God!
              ''';

  @override
  Widget build(BuildContext context) {
    return bodyWebPage(context);
  }

  Widget bodyWebPage(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: double.infinity),
      child: const Column(
        children: [
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
