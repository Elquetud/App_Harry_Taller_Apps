// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  test('aceptando valores de personaje', () {
    var personaje = {
      "personaje": "Harry Pother",
      "alive": "true",
      "score": 1000
    };

    var parsedJson;
    personaje.fromJson(parsedJson['personaje']);
  });
}
