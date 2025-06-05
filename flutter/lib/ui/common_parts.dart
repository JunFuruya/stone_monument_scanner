import 'package:flutter/material.dart';

class CommonParts {
  /// ハンバーガーメニュー項目リスト
  static List<Map<String, String>> menuList = [
    {'title': '古文書スキャン', 'uri': '/ancient_documents'},
    {'title': 'プライバシーポリシー', 'uri': '/privacy_policy'}
  ];

  /// ヘッダー
  ///
  static getAppBar(BuildContext context, String title) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(title),
    );
  }

  /// ハンバーガーメニュー
  static Drawer getHamburgerMenu(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          _getHamburgerMenuHeader(),
          _getHamburgerMenuDivider(),
          ...menuList.map((item) => _addMenuItem(context, item)),
        ],
      ),
    );
  }

  /// ハンバーガーメニューヘッダ
  static DrawerHeader _getHamburgerMenuHeader() {
    return const DrawerHeader(child: null,);
  }

  /// ハンバーガーメニュー区切り線
  static Divider _getHamburgerMenuDivider() {
    return const Divider();
  }

  /// ハンバーガーメニューに項目を追加する
  static Column _addMenuItem(BuildContext context, Map<String, String> map) {
    return Column(
        children: [
          ElevatedButton(
            child: Text(map['title']!),
            onPressed: () {
              Navigator.of(context).pushNamed(map['uri']!);
              //Navigator.of(context).pushNamed('/ancient_documents', );
            },
          ),
        ]
    );
  }

  /// 画面移動ボタン生成
  static ElevatedButton getElevatedButton(BuildContext context, styles, text, String uri, arguments) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed(uri, arguments: arguments);
      }, // ボタンを押したときの挙動
      style: ElevatedButton.styleFrom(
        backgroundColor: styles,
      ), // ボタンのデザイン
      child: Text(text), // ボタンのラベル
    );
  }
}