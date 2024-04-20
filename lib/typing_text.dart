import 'package:flutter/material.dart';
import 'package:type_text/type_text.dart';

buildTypeText({
  TextStyle? style,
  required String txt,
}) {
  return TypeText(
    style: style ?? const TextStyle(color: Colors.black, fontSize: 14),
    textAlign: TextAlign.start,
    txt,
    duration: const Duration(seconds: 1),
  );
}
