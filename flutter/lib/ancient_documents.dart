import 'package:flutter/material.dart';

class AncientDocuments extends StatelessWidget {
  const AncientDocuments({super.key});

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
