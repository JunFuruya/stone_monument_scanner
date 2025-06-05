import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../pages/ancient_documents.dart';
import '../ui/common_parts.dart';

/// 2-2. カメラ起動 状態クラス
class AncientDocumentsCameraState extends State<AncientDocumentsCamera> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  Future<void> _takePhoto() async {
    final XFile? pickedFile =
    await _picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
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
              onPressed: _takePhoto,
              child: Text('カメラを起動する'),
            ),
          ],
        ),
      ),
    );
  }
}