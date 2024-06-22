import 'package:flutter/material.dart';

class Auth_view_Model extends ChangeNotifier {
  // ************* Loading State Handler

  bool _loading = false;
  bool get isLoading => _loading;
  setLoading(bool status) {
    _loading = status;
    notifyListeners();
  }
}
