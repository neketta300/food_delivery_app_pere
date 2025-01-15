import 'package:flutter/material.dart';

class Profile extends ChangeNotifier {
  String _name = "user";
  String _address = "Ne skaju";
  String _email = "user@gmail.by";
  String _phone = "+3752550509949";

  // GETTERS

  String get name => _name;
  String get address => _address;
  String get email => _email;
  String get phone => _phone;

  // OPERATIONS

  void updateNameProfile(String newName) {
    _name = newName;
    notifyListeners();
  }

  void updateAddressProfile(String newAddress) {
    _name = newAddress;
    notifyListeners();
  }

  void updateEmailProfile(String newEmail) {
    _name = newEmail;
    notifyListeners();
  }

  void updatePhoneProfile(String newPhone) {
    _name = newPhone;
    notifyListeners();
  }
}
