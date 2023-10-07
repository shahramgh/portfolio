import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:portfolio_website/core/utils/res/app_size.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:portfolio_website/core/utils/res/color.dart';
import 'package:portfolio_website/core/utils/res/string.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia(
      {Key? key,
      Color color = periscopeDarkBlue,
      required VoidCallback onTap,
      required String imageAddress,
      double size = 20})
      : _color = color,
        _onTap = onTap,
        _imageAddress = imageAddress,
        _size = size,
        super(key: key);

  final Color _color;
  final Function() _onTap;
  final String _imageAddress;
  final double _size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      borderRadius: BorderRadius.circular(10),
      radius: 10,
      onTap: _onTap,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        width: _size,
        height: _size,
        child: Image.asset(
          _imageAddress,
          color: _color,
        ),
      ),
    );
  }
}

class TopMenuWebLayoutItem extends StatelessWidget {
  const TopMenuWebLayoutItem(
      {Key? key,
      required Function()? onTap,
      required IconData icon,
      required Color iconColor,
      required Color textColor,
      required String text,
      required bool showDottedLine,
      required Function(bool) onHover,
      Axis direction = Axis.vertical,
      double height = 0.1})
      : _onTap = onTap,
        _icon = icon,
        _iconColor = iconColor,
        _text = text,
        _textColor = textColor,
        _onHover = onHover,
        _showDottedLine = showDottedLine,
        _direction = direction,
        _height = height,
        super(key: key);

  final Function()? _onTap;
  final IconData _icon;
  final Color _iconColor;
  final Color _textColor;
  final String _text;
  final bool _showDottedLine;
  final Function(bool) _onHover;
  final Axis _direction;
  final double _height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.height(context) * _height,
      child: Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints(
                      maxHeight: AppSize.height(context),
                      maxWidth: AppSize.width(context)),
                  width: AppSize.width(context),
                  height: AppSize.height(context),
                  margin: EdgeInsets.symmetric(
                      vertical: AppSize.height(context) * 0.025),
                  child: InkWell(
                    onHover: _onHover,
                    onTap: _onTap,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(_icon,
                            color: _iconColor,
                            size: AppSize.height(context) * 0.035),
                        Text(
                          _text,
                          style: TextStyle(
                              color: _textColor,
                              fontSize: AppSize.height(context) * 0.035),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: _showDottedLine,
                child: DottedLine(
                  dashColor: PortfolioText,
                  direction: _direction,
                ),
              ),
            ],
          )),
    );
  }
}

class SkillPercentIndicatorItem extends StatelessWidget {
  const SkillPercentIndicatorItem({
    Key? key,
    String title = "",
    required double percent,
    double width = 0.2,
  })  : _title = title,
        _percent = percent,
        _width = width,
        super(key: key);
  final String _title;
  final double _percent;
  final double _width;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(_title),
      subtitle: LinearPercentIndicator(
        animation: true,
        backgroundColor: DarkOrange_W3C,
        progressColor: PortfolioText,
        curve: Curves.linear,
        width: AppSize.width(context) * _width,
        percent: _percent,
        padding: const EdgeInsets.symmetric(vertical: 1),
        widgetIndicator: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "${_percent * 100}%",
          ),
        ),
        lineHeight: 10.0,
        alignment: MainAxisAlignment.start,
        barRadius: const Radius.circular(10),
        addAutomaticKeepAlive: true,
        animateFromLastPercent: true,
        clipLinearGradient: true,
        animationDuration: 3000,
        restartAnimation: true,
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
    required this.context,
    required int year,
    required int lastYear,
  })  : _year = year,
        _lastYear = lastYear,
        super(key: key);

  final BuildContext context;
  final int _year;
  final int _lastYear;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Flexible(
        flex: 1,
        child: Container(
          width: AppSize.width(context),
          height: AppSize.height(context) / 9,
          color: Colors.white,
          alignment: Alignment.center,
          child: Text(StringApp.appCopyRightFull,
              style: TextStyle(fontSize: AppSize.height(context) * 0.015),
              textAlign: TextAlign.center),
        ),
      ),
    );
  }
}

class MyStepper extends StatelessWidget {
  const MyStepper({Key? key, required this.icon, required this.list})
      : super(key: key);

  final IconData icon;
  final List<MyStepperItem> list;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: double.infinity),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: PortfolioText),
              width: 50,
              height: 50,
              child: Icon(icon, color: PortfolioTextLightGray2),
            ),
            ...list.toList(),
          ],
        ),
      ),
    );
  }
}

class MyStepperItem extends StatelessWidget {
  const MyStepperItem(
      {Key? key,
      required this.icon,
      this.title = "",
      this.label = "",
      this.subTitle = ""})
      : super(key: key);
  final IconData icon;
  final String title;
  final String label;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: AppSize.height(context) * 0.005,
      ),
      child: ListTile(
        titleAlignment: ListTileTitleAlignment.top,
        leading: Icon(
          icon,
          color: PortfolioText,
          size: AppSize.height(context) * 0.02,
        ),
        title: Text(title),
        subtitle: RichText(textAlign: TextAlign.justify,text: TextSpan(children: [
          TextSpan(text: label+'\n',style: TextStyle(color: Smokey_Gray)),
          TextSpan(text: subTitle,style: TextStyle(color: Iron_Gray)),
        ])),
      ),
    );
  }
}


class MySeparator extends StatelessWidget {
  const MySeparator({Key? key, this.height = 1, this.color = Colors.black})
      : super(key: key);
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 10.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          mainAxisSize: MainAxisSize.max,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}
