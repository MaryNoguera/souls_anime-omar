// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/instance_manager.dart';
// import 'package:intl/intl.dart';
// import 'package:souls_anime/domain/controller/update_controller.dart';
// import 'package:souls_anime/domain/models/update_model.dart';

// class NuevoAnime extends StatefulWidget {
//   const NuevoAnime({Key? key}) : super(key: key);

//   @override
//   State<NuevoAnime> createState() => _UpDateState();
// }

// class _UpDateState extends State<NuevoAnime> {
//   final textcontroller = TextEditingController();
//   UpdateController stateController = Get.find();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: GetX<UpdateController>(builder: (controller) {
//           return ListView.builder(
//             itemCount: UpdateController.listUpdate.length,
//             itemBuilder: (context, index) {
//               return Card(
//                 child: ListTile(
//                   leading: FlutterLogo(size: 72.0),
//                   title: Text(UpdateController.listUpdate[index].username),
//                   subtitle: Column(
//                     children: [
//                       Text(UpdateController.listUpdate[index].message),
//                       Text(UpdateController.listUpdate[index].date),
//                     ],
//                   ),
//                   // trailing: Icon(Icons.more_vert),
//                 ),
//               );
//             },
//           );
//         }),
//         floatingActionButton: FloatingActionButton(
//             child: Icon(Icons.add),
//             onPressed: () {
//               showDialog(
//                   context: context,
//                   builder: (context) {
//                     return AlertDialog(
//                       content: Column(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           TextField(
//                             controller: textcontroller,
//                             decoration: InputDecoration(
//                                 border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(5)),
//                                 hintText: 'Ingrese estado'),
//                           ),
//                           RaisedButton(
//                               onPressed: () {
//                                 var now = new DateTime.now();
//                                 var formatter = new DateFormat('yyyy-MM-dd');
//                                 String formattedDate = formatter.format(now);
//                                 User? user = FirebaseAuth.instance.currentUser;
//                                 String? em = user!.email;
//                                 UpdateController stateController = Get.find();
//                                 stateController.addUpdate(
//                                     username: em,
//                                     message: textcontroller.text,
//                                     date: formattedDate);
//                                 textcontroller.text = '';
//                                 Get.back();
//                               },
//                               child: Text('Publicar'))
//                         ],
//                       ),
//                     );
//                   });
//             }));
//   }
// }
