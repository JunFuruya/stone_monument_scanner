import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import '../states/ancient_document_state.dart';
import '../ui/common_parts.dart';

/// 2-1. 古文書スキャンTOP
///
class AncientDocumentsTop extends StatefulWidget {
  final String title;

  // コンストラクタ
  const AncientDocumentsTop({super.key, required this.title});

  @override
  State<AncientDocumentsTop> createState() => AncientDocumentsTopState();
}
