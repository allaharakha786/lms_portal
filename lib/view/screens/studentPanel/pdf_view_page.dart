import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class PdfViewPage extends StatelessWidget {
  final String pdfAssetPath;

  PdfViewPage({required this.pdfAssetPath});

  Future<String> loadAndSavePdf() async {
    // Load the PDF from assets
    final byteData = await rootBundle.load(pdfAssetPath);

    // Get the temporary directory path
    final tempDir = await getTemporaryDirectory();
    final tempPath = '${tempDir.path}/temp.pdf';

    // Write the PDF to the temporary directory
    final file = File(tempPath);
    await file.writeAsBytes(byteData.buffer.asUint8List());

    // Return the path to the PDF file
    return tempPath;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PDF Viewer')),
      body: FutureBuilder<String>(
        future: loadAndSavePdf(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text("Error loading PDF"));
          }

          return PDFView(
            filePath: snapshot.data!, // The file path to the PDF
          );
        },
      ),
    );
  }
}
