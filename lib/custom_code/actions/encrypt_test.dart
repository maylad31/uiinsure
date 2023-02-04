// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
import 'package:encrypt/encrypt.dart' as encrypt;

Future<bool> encryptTest() async {
  final plainText = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit';
  final key = 'my32lengthsupersecretnooneknows1__4L11NlqU0=';
  final iv = encrypt.IV.fromLength(16);

  final b64key = encrypt.Key.fromBase64(key);
  // if you need to use the ttl feature, you'll need to use APIs in the algorithm itself
  final fernet = encrypt.Fernet(b64key);
  final encrypter = encrypt.Encrypter(fernet);

  final encrypted = encrypter.encrypt(plainText);
  final decrypted = encrypter.decrypt(encrypted);

  print(decrypted); // Lorem ipsum dolor sit amet, consectetur adipiscing elit
  print(encrypted.base64); // random cipher text
  print(fernet.extractTimestamp(encrypted.bytes)); // unix timestamp

  // final plainText = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit';
  // final key = encrypt.Key.fromUtf8('my32lengthsupedd');
  // final iv = encrypt.IV.fromLength(16);

  // final b64key = encrypt.Key.fromUtf8(base64Url.encode(key.bytes));
  // // if you need to use the ttl feature, you'll need to use APIs in the algorithm itself
  // final fernet = encrypt.Fernet(b64key);
  // final encrypter = encrypt.Encrypter(fernet);

  // final encrypted = encrypter.encrypt(plainText);
  // final decrypted = encrypter.decrypt(encrypted);

  // print(decrypted); // Lorem ipsum dolor sit amet, consectetur adipiscing elit
  // print(encrypted.base64); // random cipher text
  // print(fernet.extractTimestamp(encrypted.bytes));
  return Future.value(true);
}
