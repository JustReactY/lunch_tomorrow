import 'package:lunch_tomorrow/api/http_request.dart';

class API {
  static login(Map<String, dynamic> params) async {
    return HttpRequest.request("/login", method: "post", params: params);
  }
}
