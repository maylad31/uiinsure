// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:multi_select_flutter/multi_select_flutter.dart';

class NomineeStruct {
  int id = 0;
  String name = "";
  NomineeStruct(int id, String name) {
    this.name = name;
    this.id = id;
  }
}

class MultiSelectOption extends StatefulWidget {
  const MultiSelectOption({
    Key? key,
    this.width,
    this.height,
    this.nominees,
  }) : super(key: key);

  final double? width;
  final double? height;
  final dynamic nominees;

  @override
  _MultiSelectOptionState createState() => _MultiSelectOptionState();
}

class _MultiSelectOptionState extends State<MultiSelectOption> {
  static List<NomineeStruct> _animals = [
    NomineeStruct(1, "Lion"),
    NomineeStruct(2, "Flamingo"),
    NomineeStruct(3, "Hippo"),
    NomineeStruct(4, "Horse"),
    NomineeStruct(5, "Tiger"),
    NomineeStruct(6, "Penguin"),
    NomineeStruct(7, "Spider"),
    NomineeStruct(8, "Snake"),
    NomineeStruct(9, "Bear"),
    NomineeStruct(10, "Beaver"),
    NomineeStruct(11, "Cat"),
    NomineeStruct(12, "Fish"),
    NomineeStruct(13, "Rabbit"),
    NomineeStruct(14, "Mouse"),
  ];

  List<NomineeStruct> _selectedAnimals = [];
  List<NomineeStruct> _selectedAnimals5 = [];

  // final _items = _animals
  //     .map((animal) => MultiSelectItem<NomineeStruct>(animal, animal.name))
  //     .toList();

  @override
  void initState() {
    _selectedAnimals5 = _animals;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("reached=======");
    // if (widget.nominees != null) {
    _animals = [
      NomineeStruct(widget.nominees[0]["id"], widget.nominees[0]["name"]),
      NomineeStruct(widget.nominees[0]["id"], widget.nominees[1]["name"])
    ];
    final _items = _animals
        .map((animal) => MultiSelectItem<NomineeStruct>(animal, animal.name))
        .toList();
    print(widget.nominees[0]["id"]);
    // print(widget.nominees.runtimeType);
    // print(jsonDecode(widget.nominees.toString() ?? '{}'));
    //print(jsonDecode(widget.nominees));
    // print(jsonDecode(widget.nominees));
    // }

    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 40),
          MultiSelectDialogField(
            items: _items,
            title: Text("Animals"),
            selectedColor: Colors.blue,
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.1),
              borderRadius: BorderRadius.all(Radius.circular(40)),
              border: Border.all(
                color: Colors.blue,
                width: 2,
              ),
            ),
            buttonIcon: Icon(
              Icons.pets,
              color: Colors.blue,
            ),
            buttonText: Text(
              "Favorite Animals",
              style: TextStyle(
                color: Colors.blue[800],
                fontSize: 16,
              ),
            ),
            onConfirm: (results) {
              // _selectedAnimals = results;
            },
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
