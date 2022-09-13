// import 'dart:async';
// import 'dart:io';
//
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:path_provider/path_provider.dart';
//
//
// class PdfScreen extends StatefulWidget {
//
//   String pdf_url;
//
//
//   PdfScreen({required this.pdf_url});
//
//   @override
//   _MyAppState createState() => new _MyAppState();
// }
//
// class _MyAppState extends State<PdfScreen> {
//   String pathPDF = "";
//
//   @override
//   void initState() {
//     super.initState();
//    // createFileOfPdfUrl().then((f) {
//       setState(() {
//         pathPDF = widget.pdf_url;
//         print(pathPDF);
//       });
//  //   });
//   }
//
//   // Future<File> createFileOfPdfUrl() async {
//   //   final url = "http://africau.edu/images/default/sample.pdf";
//   //   final filename = url.substring(url.lastIndexOf("/") + 1);
//   //   var request = await HttpClient().getUrl(Uri.parse(url));
//   //   var response = await request.close();
//   //   var bytes = await consolidateHttpClientResponseBytes(response);
//   //   String dir = (await getApplicationDocumentsDirectory()).path;
//   //   File file = new File('$dir/$filename');
//   //   await file.writeAsBytes(bytes);
//   //   return file;
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Plugin example app')),
//       body: Center(
//         child: RaisedButton(
//           child: Text("Open PDF"),
//           onPressed: () => Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => PDFScreen(pathPDF)),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class PDFScreen extends StatelessWidget {
//   String pathPDF = "";
//   PDFScreen(this.pathPDF);
//
//   @override
//   Widget build(BuildContext context) {
//     return PDFViewerScaffold(
//         appBar: AppBar(
//           title: Text("Document"),
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(Icons.share),
//               onPressed: () {},
//             ),
//           ],
//         ),
//         path: pathPDF);
//   }
//
//
// }