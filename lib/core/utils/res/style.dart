import 'dart:io';

import 'package:flutter/material.dart';
import 'package:portfolio_website/core/utils/res/color.dart';

/// Text Styles
var kLargeTitleStyle = TextStyle(
  fontSize: 28.0,
  fontWeight: FontWeight.bold,
  color: kPrimaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kSplashNoteCompanyNameStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
  color: kSplashCompanyNameLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kSplashNoteAppVersionStyle = TextStyle(
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
  color: kSplashAppVersionLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kTitle1Style = TextStyle(
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
  color: kPrimaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kCardTitleStyle = TextStyle(
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  fontWeight: FontWeight.bold,
  color: kBackgroundColor,
  fontSize: 22.0,
  decoration: TextDecoration.none,
);
var kTitle2Style = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: kPrimaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kHeadlineLabelStyle = const TextStyle(
  fontSize: 17.0,
  fontWeight: FontWeight.w800,
  color: kPrimaryLabelColor,
  fontFamily: 'SF Pro Text',
  decoration: TextDecoration.none,
);
var kSubtitleStyle = TextStyle(
  fontSize: 16.0,
  color: kSecondaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kBodyLabelStyle = TextStyle(
  fontSize: 16.0,
  color: Colors.black,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kCalloutLabelStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w800,
  color: kPrimaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kSecondaryCalloutLabelStyle = TextStyle(
  fontSize: 16.0,
  color: kSecondaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kSearchPlaceholderStyle = TextStyle(
  fontSize: 13.0,
  color: kSecondaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kSearchTextStyle = TextStyle(
  fontSize: 13.0,
  color: kPrimaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kCardSubtitleStyle = TextStyle(
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  color: kBackgroundColor,
  fontSize: 13.0,
  decoration: TextDecoration.none,
);
var kCaptionLabelStyle = TextStyle(
  fontSize: 12.0,
  color: kSecondaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);

var kConfirmCodeInputTextStyle = TextStyle(
    fontSize: 30.0,
    color: Blue_Moss_Green,
    fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
    decoration: TextDecoration.none,
    fontWeight: FontWeight.bold);

var kLoginInputTextStyle = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 20.0,
  color: Blue_Moss_Green,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);

var kSearchInputTextStyle = TextStyle(
  fontSize: 16.0,
  color: Blue_Moss_Green,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  fontWeight: FontWeight.bold,
);

var kTextHomeInformationScreen = const TextStyle(
  color: Blue_Moss_Green,
  fontSize: 30,
  fontWeight: FontWeight.w800,
  inherit: true,
);

var kTextHomeInformationTitle = const TextStyle(
  color: Orange_Gold,
  fontSize: 15,
  fontWeight: FontWeight.w800,
  inherit: true,
);

var kTextHomeInformationInfo = const TextStyle(
  color: Platinum,
  fontSize: 25,
  fontWeight: FontWeight.w800,
  inherit: true,
);

InputDecoration decorationTextFieldAddHome(
    {required IconData icon,
    required String hintText,
    required Icon prefixIcon,
    Color prefixColor = Platinum}) {
  return InputDecoration(
    hintStyle: const TextStyle(overflow: TextOverflow.clip, color: Orange_Gold),
    hintText: hintText,
    prefixIcon: Icon(icon, color: prefixColor, size: 14.5),
    contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(color: Transparent, width: 2),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(color: Transparent, width: 1.5),
    ),
    focusedBorder: OutlineInputBorder(
      gapPadding: 0.0,
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(color: Transparent, width: 1.5),
    ),
  );
}

ButtonStyle buttonStyle = ElevatedButton.styleFrom(
  primary: Blue_Moss_Green,
  //button's fill color
  onPrimary: Orange_Gold,
  //specify the color of the button's text and icons as well as the overlay colors used to indicate the hover, focus, and pressed states
  // onSurface: Colors.orange, //specify the button's disabled text, icon, and fill color
  shadowColor: Transparent,
  //specify the button's elevation color
  elevation: 0, //buttons Material shadow
  // textStyle: TextStyle(fontFamily: 'English'), //specify the button's text TextStyle
  // padding: const EdgeInsets.only(top: 4.0, bottom: 4.0, right: 8.0, left: 8.0), //specify the button's Padding
  // minimumSize: Size(20, 40), //specify the button's first: width and second: height
  // side: BorderSide(color: Blue_Moss_Green, width: 2.0, style: BorderStyle.solid), //set border for the button
  // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)), // set the buttons shape. Make its birders rounded etc
  // enabledMouseCursor: MouseCursor.defer, //used to construct ButtonStyle.mouseCursor
  // disabledMouseCursor: MouseCursor.uncontrolled, //used to construct ButtonStyle.mouseCursor
  // visualDensity: VisualDensity(horizontal: 0.0, vertical: 0.0), //set the button's visual density
  // tapTargetSize: MaterialTapTargetSize.padded, // set the MaterialTapTarget size. can set to: values, padded and shrinkWrap properties
  // animationDuration: Duration(milliseconds: 100), //the buttons animations duration
  // enableFeedback: true, //to set the feedback to true or false
  // alignment: Alignment.bottomCenter, //set the button's child Alignment
);
