import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:souls_anime/domain/controller/state_controller.dart';

class Estados extends StatefulWidget {
  const Estados({Key? key}) : super(key: key);

  @override
  State<Estados> createState() => _EstadosState();
}

class _EstadosState extends State<Estados> {
  final textcontroller = TextEditingController();
  StateController stateController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetX<StateController>(builder: (controller) {
          return ListView.builder(
            itemCount: stateController.listState.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: FlutterLogo(size: 72.0),
                  title: Text(stateController.listState[index].userName),
                  subtitle: Column(
                    children: [
                      Text(stateController.listState[index].message),
                      Text(stateController.listState[index].date),
                    ],
                  ),
                  // trailing: Icon(Icons.more_vert),
                ),
              );
            },
          );
        }),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextField(
                            controller: textcontroller,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                hintText: 'Ingrese estado'),
                          ),
                          RaisedButton(
                              onPressed: () {
                                var now = new DateTime.now();
                                var formatter = new DateFormat('yyyy-MM-dd');
                                String formattedDate = formatter.format(now);
                                User? user = FirebaseAuth.instance.currentUser;
                                String? em = user!.email;
                                StateController stateController = Get.find();
                                stateController.addState(
                                    userName: em,
                                    message: textcontroller.text,
                                    date: formattedDate);
                                textcontroller.text = '';
                                Get.back();
                              },
                              child: Text('Publicar'))
                        ],
                      ),
                    );
                  });
            }));
  }
}
