import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import '../pages/ancient_documents.dart';
import '../ui/common_parts.dart';

/// 2-2. カメラ起動 状態クラス
class AncientDocumentsCameraState extends State<AncientDocumentsCamera> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  Future<void> _takeAndSavePhoto() async {
    final XFile? pickedFile =
    await _picker.pickImage(source: ImageSource.camera);

    if (pickedFile == null) {
      return;
    } else {
      // アプリのドキュメントディレクトリ取得
      final Directory appDir = await getApplicationDocumentsDirectory();

      // 保存先のパスを作成（同じファイル名で保存）
      final String fileName = path.basename(pickedFile.path);
      final File savedImage = await File(pickedFile.path).copy('${appDir.path}/$fileName');

      // UI更新
      setState(() {
        _image = savedImage;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('保存しました: ${savedImage.path}')),
      );
    }

    setState(() {
      _image = File(pickedFile.path);
    });
  }

  // 画面構築
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('カメラ起動サンプル')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _image != null
                ? Image.file(_image!, width: 300)
                : Text('写真が選択されていません'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _takeAndSavePhoto,
              child: Text('カメラを起動する'),
            ),
          ],
        ),
      ),
    );
  }
}