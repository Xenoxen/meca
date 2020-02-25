import 'dart:async';
import 'package:flutter_appauth/flutter_appauth.dart';

class Auth{
  FlutterAppAuth appAuth = FlutterAppAuth();

  void getLogin() async {
    final AuthorizationTokenResponse result = await appAuth.authorizeAndExchangeCode(
      AuthorizationTokenRequest(
        'e7fa332d-1ba7-4fd1-8c9d-e3195ab4a65b',
        'msauth://app.progden.meca/7XPOCj1KN8mZIrwtqJ%2B1VvqwBfM%3D',
        discoveryUrl: '<discovery_url>',
        scopes: ['openid','profile', 'email', 'offline_access', 'api'],
      ),
    );
    print(result.toString());
}

}