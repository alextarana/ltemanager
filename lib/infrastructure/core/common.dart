import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:flutter/foundation.dart';

const kAESKey = "myfantastickey12";

String createNonce(String email) {
  final String now = DateTime.now().millisecondsSinceEpoch.toString();
  final String hashText = email + now;

  final List<int> bytes = utf8.encode(hashText);

  final String token = sha512.convert(bytes).toString();
  return token;
}

Future generateCnonce(String email) => compute(createNonce, email);
