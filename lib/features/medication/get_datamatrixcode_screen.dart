import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import '../../ui/theme/theme_colors.dart';
import '../../ui/theme/theme_constants.dart';

// A screen that allows users to either select a datamatrix code image from the gallery or scan it in real-time.

class GetDataMatrixCodeScreen extends StatefulWidget {
  @override
  _GetDataMatrixCodeScreenState createState() => _GetDataMatrixCodeScreenState();
}

class _GetDataMatrixCodeScreenState extends State<GetDataMatrixCodeScreen> {
  File? imageOfDatamatrix;

  Future pickImage(ImageSource source, BuildContext context) async {
    try {
      final imageOfDatamatrix = await ImagePicker().pickImage(source: source);
      if (imageOfDatamatrix == null) return;

      //final imageTemporary = File(image.path);
      final imagePermanent = await saveImagePermanently(imageOfDatamatrix.path);

      Navigator.pop(context, imageOfDatamatrix.path);

      //setState(() => this.imageOfDatamatrix = imagePermanent);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          child: Image.asset(
            'assets/images/logo.png',
          ),
        ),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4.0),
            child: Container(
              color: ThemeColors.secondaryColor,
              height: 1.0,
            )),
    ),
    body: Container(
      padding: EdgeInsets.all(32),
      child: Column(
        children: [
          Spacer(),
          imageOfDatamatrix != null ? Image.file(
            imageOfDatamatrix!,
            width: 160,
            height: 160,
            fit: BoxFit.cover,
          )
              : Image.asset(
            'assets/images/scanning-datamatrix.gif',
          ),
          const SizedBox(height: 20),
          Text(
            'DataMatrix-Code scannen',
            style: ThemeConstants.primaryFont.copyWith(fontSize: 20, fontWeight: FontWeight.normal
            ),
          ),
          const SizedBox(height: 38),
          buildButton(
            title: 'Fotogalerie',
            icon: Icons.image_outlined,
            onClicked: () => pickImage(ImageSource.gallery, context),
          ),
          Spacer(flex: 1),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('Vorhandenes Foto von DataMatrix-Code hinzufügen', style: ThemeConstants.primaryFont.copyWith(fontSize: 15, fontWeight: FontWeight.normal))]),
          const SizedBox(height: 24),
          buildButton(
            title: 'Kamera',
            icon: Icons.camera_alt_outlined,
            onClicked: () => pickImage(ImageSource.camera, context),
          ),
          Spacer(flex: 1),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('DataMatrix-Code fotografieren', style: ThemeConstants.primaryFont.copyWith(fontSize: 15, fontWeight: FontWeight.normal))]),
          Spacer(flex: 4),
        ],
      )
    )
  );

  buildButton({required String title, required IconData icon, required VoidCallback onClicked}) =>
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          minimumSize: Size.fromHeight(56),
          textStyle: TextStyle(fontSize: 20),
        ),
        child: Row(
          children: [
            Icon(icon, size: 28),
            const SizedBox(width: 16),
            Text(title, style: ThemeConstants.primaryFont),
          ],
        ),
        onPressed: onClicked,
      );

  Future<File> saveImagePermanently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final imageOfDatamatrix = File('${directory.path}/$name');

    return File(imagePath).copy(imageOfDatamatrix.path);
  }
}
