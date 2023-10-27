library authorization_test;

import 'package:belatuk_oauth1/belatuk_oauth1.dart';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';

void main() {
  final Platform twitter1_1 = Platform(
      'https://api.twitter.com/oauth/request_token',
      'https://api.twitter.com/oauth/authorize',
      'https://api.twitter.com/oauth/access_token',
      SignatureMethods.hmacSha1);
  const String apiKey = '<Twitter API Key>';
  const String apiSecret = '<Twitter API Secret>';
  final ClientCredentials clientCredentials =
      ClientCredentials(apiKey, apiSecret);

  test('request temporary credentials', () {
    final Authorization auth = Authorization(
        clientCredentials, twitter1_1, http.Client() as http.BaseClient?);
    return auth.requestTemporaryCredentials();
  });
}
