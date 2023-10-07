

class StringApp{
  StringApp._();
  static const String _appCopyRight = "\u00a9";
  static const String _apiKeyGoogleMap = "AIzaSyBKMNj59wHsFtqKYpAGsgdgm5vVPovlTW8";
  static const String _apiKeyMapBox ="pk.eyJ1Ijoic2hnaDg4IiwiYSI6ImNsMWw1MnU3ZjA1NDgzaWtoejBiaG5lOTIifQ.OhdV0bTImWejufaHqHeJUg";
  static const String _appCopyRightYearBuild = "2023";
  static final String _appCopyRightFull = "Copyright $_appCopyRight $_appCopyRightYearBuild - ${DateTime.now().year+1} All right reserved  by Shahram Ghorbani Kalkhajeh";
  static const String _copyright = "\u00a9: 2022";
  static const String _webTitle = 'Shahram\n\t\t\tGhorbani\n\t\t\t\t\t\tKalkhajeh';
  static const String _leftSide = 'Shahram\tGhorbani\tKalkhajeh';
  static const String _phone = '+989132064434';
  static const String _contact = 'Contact';
  static const String _blog = 'Blog';
  static const String _portfolio = 'Portfolio';
  static const String _resume = 'Resume';
  static const String _about = 'About';
  static const double _latitude = 32.84435113048055;
  static const double _longitude = 51.56574464575594;

  static String get contact => _contact;

  static String get phone => _phone;

  static String get copyright => _copyright;

  static String get appCopyRight => _appCopyRight;

  static String get webTitle => _webTitle;

  static String get appCopyRightFull => _appCopyRightFull;

  static String get blog => _blog;

  static String get about => _about;

  static String get resume => _resume;

  static String get portfolio => _portfolio;

  static String get appCopyRightYearBuild => _appCopyRightYearBuild;

  static String get leftSide => _leftSide;

  static double get longitude => _longitude;

  static double get latitude => _latitude;

  static String get apiKeyMapBox => _apiKeyMapBox;

  static String get apiKeyGoogleMap => _apiKeyGoogleMap;
}