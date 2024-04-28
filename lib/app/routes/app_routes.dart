part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static Future<String> get INITIAL async {
    return Routes.SPLASH;
  }

  static const SPLASH = _Paths.SPLASH;
  static const WELCOME = _Paths.WELCOME;
  static const DISCOVER = _Paths.DISCOVER;
  static const CONNECT = _Paths.CONNECT;
  static const MAIN = _Paths.MAIN;
}

abstract class _Paths {
  _Paths._();
  static const SPLASH = "/splash";
  static const WELCOME = '/welcome';
  static const DISCOVER = '/discover';
  static const CONNECT = '/connect';
  static const MAIN = '/main';
}
