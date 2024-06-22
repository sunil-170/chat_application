import 'package:chat_application/Network/BaseApiService.dart';
import 'package:chat_application/Network/networkApiService.dart';

class Auth_Repository {
  BaseApiServices _auth_repo = NetworkApiServices();

  Future<dynamic> login_function() async {
    try {
      dynamic response = await _auth_repo.Signupfun("");
      return response;
    } catch (e) {
      throw e.toString();
    }
  }
}
