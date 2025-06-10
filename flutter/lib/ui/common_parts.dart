import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';

class CommonParts {
  /// ハンバーガーメニュー項目リスト
  static getMenuListMap (BuildContext context) {
    List<Map<String, String>> menuList = [
      {'title': AppLocalizations.of(context)!.ancient_documents_top, 'uri': '/ancient_documents'},
      {'title': AppLocalizations.of(context)!.privacy_policy, 'uri': '/privacy_policy'},
      {'title': AppLocalizations.of(context)!.terms_of_service, 'uri': '/terms_of_service'}
    ];
    return menuList;
  }


  /// ヘッダー
  ///
  static getAppBar(BuildContext context, String title) {
    return AppBar(
      backgroundColor: Color(0xFF5C9291),
      title: Text(title),
    );
  }

  /// ハンバーガーメニュー
  static Drawer getHamburgerMenu(BuildContext context) {
    List<Map<String, String>> menuList = CommonParts.getMenuListMap(context);

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
    return const DrawerHeader(
      decoration: BoxDecoration(
        color: Color(0xFF5C9291),
      ),
      child: Center(
        child: Text(
          'メニュー',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  /// ハンバーガーメニュー区切り線
  static Divider _getHamburgerMenuDivider() {
    return const Divider(
      thickness: 1.0,
      color: Colors.black,
    );
  }

  /// ハンバーガーメニューに項目を追加する
  static Column _addMenuItem(BuildContext context, Map<String, String> map) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(map['uri']!);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  map['title']!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
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

  /// 錆浅葱
  static getColorBlue() {
    return Color(0xFF5C9291);
  }
}