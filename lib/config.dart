import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';

class AppConfig{
  static const String APP_URL = 'https://punkt-e.io';
  static const String API_URL = '/api/v2/';

  static Client initClient() {
    final link = HttpLink(APP_URL + API_URL, defaultHeaders: {
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Methods": "GET,PUT,PATCH,POST,DELETE",
      "Access-Control-Allow-Headers": "Origin, X-Requested-With, Content-Type, Accept"
    });
    final client = Client(link: link);
    return client;
  }
}

