import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:http_parser/http_parser.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import '../l10n/app_localizations.dart';
import '../pages/ancient_documents.dart';
import '../ui/ancient_document_ui.dart';
import '../ui/common_parts.dart';

/// 2-1. 古文書スキャンTOP 状態クラス
///
class AncientDocumentsTopState extends State<AncientDocumentsTop> {
  File? _photo;
  final ImagePicker _picker = ImagePicker();
  String? _apiUri;

  // カメラで写真を撮る
  Future<void> _takePhoto() async {
    // カメラ起動
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.camera);
    // 写真が無ければ何もしない
    if (pickedFile == null) return;

    // UI更新
    setState(() {
      _photo = File(pickedFile.path);
    });
  }

  // 撮った写真を保存する
  Future<void> _savePhoto() async {
    // コンテキストを一時保存
    final ctx = context;
    // 写真が無ければ何もしない
    if (_photo == null) return;

    // アプリのドキュメントディレクトリ取得
    final Directory appDir = await getApplicationDocumentsDirectory();

    // 保存先のパスを作成（同じファイル名で保存）
    final String fileName = path.basename(_photo!.path);
    final File savedImage = await File(_photo!.path).copy('${appDir.path}/$fileName');

    ScaffoldMessenger.of(ctx).showSnackBar(
      SnackBar(content: Text('保存しました: ${savedImage.path}')),
    );
  }

  // 撮った写真を解析する
  Future<void> _analyzePhoto() async {
    // 写真が無ければ何もしない
    if (_photo == null) return;
    // コンテキストを一時保存
    final ctx = context;

    //URI
    _apiUri = '${dotenv.env['PROTOCOL']}://${dotenv.env['API_DOMAIN']}';

    // API実行
    final uri = Uri.parse(_apiUri!);
    final request = http.MultipartRequest('POST', uri);
    final mimeType = lookupMimeType(_photo!.path)?.split('/'); // ['image', 'jpeg'] など

    request.files.add(await http.MultipartFile.fromPath(
      'image',                    // ← APIの受け取りキー名に合わせて
      _photo!.path,
      contentType: mimeType != null ? MediaType(mimeType[0], mimeType[1]) : null,
    ));

    try {
      final response = await request.send();

      if (response.statusCode == 200) {
        ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(content: Text('アップロード成功！')));
      } else {
        ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(content: Text('失敗: ${response.statusCode}')));
      }
    } catch (e) {
      ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(content: Text('エラー: $e')));
    } finally {
      //setState(() => _uploading = false);
    }
  }

  // 画面構築
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonParts.getAppBar(context, AppLocalizations.of(context)!.ancient_documents_top),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _photo != null ? Image.file(_photo!, width: 300) : Text(AppLocalizations.of(context)!.message_no_photo_taken),
            SizedBox(height: 20),
            AncientDocumentUi.getInvokeCameraButton(context, _takePhoto),
            AncientDocumentUi.getAnalyzePhotoButton(context, _photo, _analyzePhoto),
            AncientDocumentUi.getSavePhotoButton(context, _photo, _savePhoto)
          ],
        ),
      ),
    );
  }
}