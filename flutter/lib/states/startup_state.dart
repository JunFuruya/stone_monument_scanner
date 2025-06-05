import 'dart:async';
import 'package:flutter/material.dart';
import '../pages/startup.dart';
import '../ui/startup_ui.dart';

/// 1-1-1. ロゴ画面 状態クラス
///
class LogoState extends State{
  // 画面を構築
  @override
  Widget build(BuildContext context) {
    return StartupUi.getLogoScaffold(context);
  }
}

/// 1-1-2. スプラッシュ画面 状態クラス
///
class SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return StartupUi.getSplashScaffold();
  }
}

/// 1-2. ホーム画面 状態クラス
class HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();

    // 2秒後にHomePageへ遷移
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home(title: '',)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return StartupUi.getHomeScaffold(context);
  }
}
