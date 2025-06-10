import 'package:flutter/material.dart';
import '../pages/static.dart';
import '../ui/static_ui.dart';

/// プライバシーポリシー画面 状態クラス
///
class PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StaticUi.getPrivacyPolicyScaffold(context);
  }
}

/// 利用規約画面 状態クラス
///
class TermsOfServiceState extends State<TermsOfService> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StaticUi.getTermsOfServiceScaffold(context);
  }
}