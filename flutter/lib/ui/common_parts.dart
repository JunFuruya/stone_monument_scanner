import 'package:flutter/material.dart';

class CommonParts {
  /// ボタン生成
  //TextButton getTextButton(action, styles, text) {
  //  return TextButton(
  //    onPressed: (objClass) {
  //      objClass.execute();
  //    }, // ボタンを押したときの挙動
  //    style: TextButton.styleFrom(styles), // ボタンのデザイン
  //    child: Text(text), // ボタンのラベル
  //  )
  //}

  static List<String> menuList = ['古文書スキャン', 'プライバシーポリシー'];

  /// ハンバーガーメニュー
  static Drawer getHamburgerMenu(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          _getHamburgerMenuHeader(),
          _getHamburgerMenuDivider(),
          ...menuList.map(
            (item) => _addMenuItem(item, context),
          )
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
  static Column _addMenuItem(String title, BuildContext context) {
    return Column(
        children: [
          ElevatedButton(
            child: Text(title),
            onPressed: () {
              // FIXME 引数はダミー値
              Navigator.of(context).pushNamed('/ancient_documents', arguments: 'Hello');
            },
          ),
        ]
    );
  }
}