import 'package:http/http.dart' as http;

//https://github.com/xxdongs/github-trending 相关接口文档
var host = ' https://trendings.herokuapp.com';

class TrendApi {
  static getTrendingRepo() async {
    return http.get(host + '?lang=javascript&since=weekly');
  }
}
