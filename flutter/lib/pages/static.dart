import 'package:flutter/material.dart';
import '../states/static_state.dart';

/// プライバシーポリシー
class PrivacyPolicy extends StatefulWidget {
  final String title;
  // コンストラクタ
  const PrivacyPolicy({super.key, required this.title});

  @override
  State<PrivacyPolicy> createState() => PrivacyPolicyState();
}

/// 利用規約
class TermsOfService extends StatefulWidget {
  final String title;
  // コンストラクタ
  const TermsOfService({super.key, required this.title});

  @override
  State<TermsOfService> createState() => TermsOfServiceState();
}