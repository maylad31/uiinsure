// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future<bool> isMpinCorrect(String uid, String inputtedMpin) async {
  var document =
      await FirebaseFirestore.instance.collection('users').doc(uid).get();
  if (document.exists) {
    Map<String, dynamic>? data = document.data();
    var pin = data?['pin'];
    print("$uid");
    print("$inputtedMpin");
    if (pin != null && !pin.isEmpty && pin == inputtedMpin) {
      print("$pin");
      return Future.value(true);
    }
  }

  return Future.value(false);
}
