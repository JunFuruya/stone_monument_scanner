import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import '../states/ancient_documents.dart';
import '../ui/common_parts.dart';

/// 2-1. 古文書スキャンTOP
///
class AncientDocumentsTop extends StatelessWidget {
  // コンストラクタ
  const AncientDocumentsTop({super.key, required title});

  // 画面構築
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonParts.getAppBar(context, "古文書スキャン"),
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

/// 2-2. カメラ起動
///
class AncientDocumentsCamera extends StatefulWidget {
  final String title;

  // コンストラクタ
  const AncientDocumentsCamera({super.key, required this.title});

  @override
  State<AncientDocumentsCamera> createState() => AncientDocumentsCameraState();
}