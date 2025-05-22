import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../ui/common_parts.dart';

/// 古文書スキャンTOP
class AncientDocumentsTop extends StatelessWidget {
  //コンストラクタ
  const AncientDocumentsTop({super.key, required title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonParts.getAppBar (context, "古文書スキャン"),
      body: Container(
        child: CommonParts.getElevatedButton(
            context,
            Colors.red,
            AppLocalizations.of(context)!.button_camera_invoke,
            '/ancient_documents/camera',
            ''
        ),
      )
    );
  }
}

/// カメラ起動
class AncientDocumentsCamera extends StatelessWidget {
  //コンストラクタ
  const AncientDocumentsCamera({super.key, required title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CommonParts.getAppBar (context, "古文書スキャン"),
        body: Container(
          color: Colors.red,
        )
    );
  }
}