import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '古文書スキャン 【α版】',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

/**
 * _MyHomePageState
 */
class _MyHomePageState extends State<MyHomePage> {
  final menuList = ['古文書スキャン', 'プライバシーポリシー'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: getHamburgerMenu(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }

  /*
   * ハンバーガーメニュー
   **/
  Drawer getHamburgerMenu() {
    return Drawer(
      child: ListView(
        children: [
          getHamburgerMenuHeader(),
          getHamburgerMenuDivider(),
          ...menuList.map(
                (e) => addMenuItem(e),
          )
        ],
      ),
    );
  }

  /*
   * ハンバーガーメニューヘッダ
   **/
  DrawerHeader getHamburgerMenuHeader() {
    return const DrawerHeader(child: null,);
  }

  /*
   * ハンバーガーメニュー区切り線
   **/
  Divider getHamburgerMenuDivider() {
    return const Divider();
  }

  /*
   * ハンバーガーメニューに項目を追加する
   **/
  Column addMenuItem(String title) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
          ),
        ),
      ],
    );
  }
}
