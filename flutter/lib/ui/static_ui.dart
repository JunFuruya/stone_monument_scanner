import 'package:flutter/material.dart';

class StaticUi {
  // 利用規約画面
  static Scaffold getPrivacyPolicyScaffold(BuildContext context) {
    return Scaffold(
      body: Image.asset('assets/images/logo.png'),
    );
  }

  // プライバシーポリシー画面
  static Scaffold getTermsOfServiceScaffold(BuildContext context) {
    return Scaffold(
      body: Image.asset('assets/images/logo.png'),
    );
  }
}