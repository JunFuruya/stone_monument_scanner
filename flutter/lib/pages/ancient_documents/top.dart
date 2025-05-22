import 'package:flutter/material.dart';

class AncientDocumentsTop extends StatelessWidget {
  //コンストラクタ
  const AncientDocumentsTop({super.key, required title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("古文書スキャン"),
      ),
      body: Container(
        color: Colors.red,
      )
    );
  }
}
