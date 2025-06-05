import 'package:flutter/material.dart';
import '../ui/common_parts.dart';

class StartupUi {
  // ロゴ画面
  static Scaffold getLogoScaffold(context) {
    return Scaffold(
      body: Image.asset('assets/images/logo.png'),
    );
  }

  // スプラッシュ
  static Scaffold getSplashScaffold() {
    return Scaffold(
      appBar: AppBar(
        title: Text('ホームページ'),
      ),
      body: Center(
        child: Text(
          'ようこそ！',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }

  // ホーム画面
  static Scaffold getHomeScaffold(context) {
    return Scaffold(
      appBar: CommonParts.getAppBar (context, "古文書スキャン"),
      drawer: CommonParts.getHamburgerMenu(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('TEST'),
            Text(
              '',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}