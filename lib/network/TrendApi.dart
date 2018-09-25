import 'dart:async';

import 'package:http/http.dart' as http;

var host = 'https://jsonplaceholder.typicode.com';

Future<http.Response> fetchPost() {
  return http.get(host + '/posts/1');
}