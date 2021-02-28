// import 'package:flutter/material.dart';
// import 'package:multi_image_picker/multi_image_picker.dart';
// import 'dart:async';
// class CameraConnect extends StatefulWidget {
//   @override
//   _CameraConnectState createState() => _CameraConnectState();
// }
// class _CameraConnectState extends State<CameraConnect> {
//   List<Asset> images = List<Asset>();


//   @override
  
// void initState() {
//     super.initState();
//   }
//   Future<void> pickImages() async { List<Asset> resultList = List<Asset>();

//     try {
//       resultList = await MultiImagePicker.pickImages(
//         maxImages: 300,
//         enableCamera: true,
//         selectedAssets: images,
//         materialOptions: MaterialOptions(
//           actionBarTitle: "FlutterCorner.com",
//         ),
//       );
//     } on Exception catch (e) {
//       print(e);
//     }

//     setState(() {
//       images = resultList;
//     });
// }
// @override
// Widget build(BuildContext context) {
//      return new MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: new Scaffold(
//         appBar: new AppBar(
//           title: const Text('Multi Image Picker - FlutterCorner.com'),
//         ),
//         body: Column(
//           children: <Widget>[
//             RaisedButton(
//               child: Text("Pick images"),
//               onPressed: pickImages,
//             ),
//             Expanded(
//               child: GridView.count(
//                 crossAxisCount: 3,
//                 children: List.generate(images.length, (index) {
//                   Asset asset = images[index];
//                   return AssetThumb(
//                     asset: asset,
//                     width: 300,
//                     height: 300,
//                   );
//                 }),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
