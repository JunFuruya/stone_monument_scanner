import 'package:flutter/material.dart';
import '../states/startup_state.dart';

/// 1-1-1. ロゴ画面
///
class Logo extends StatelessWidget {
  const Logo({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash(title: '',),
    );
  }
}

/// 1-1-2.スプラッシュ画面
///
class Splash extends StatefulWidget {
  final String title; // UIのところから"widget.変数名"で呼べる

  // コンストラクタ
  const Splash({Key? key, required this.title}): super(key: key);

  @override
  SplashState createState() => SplashState();
}

/// 1-2. ホーム画面
///
class Home extends StatefulWidget {
  // コンストラクタ
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => HomeState();
}
