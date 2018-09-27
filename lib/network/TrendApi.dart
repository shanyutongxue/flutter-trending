import 'dart:async';

import 'package:http/http.dart' as http;

//https://github.com/xxdongs/github-trending 相关接口文档
var host = ' https://trendings.herokuapp.com';

Future<http.Response> getTrendingRepository() {
  return http.get(host + '/repo?lang=java&since=weekly');
}