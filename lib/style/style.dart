import 'package:flutter/material.dart';

InputDecoration inputDecorationStyle (
    String labelText,
    String hintText,
    Widget prefixIcon,
    [Widget? suffixIcon]
    ) {
  return InputDecoration(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),

    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.brown),
        borderRadius: BorderRadius.circular(12)),

    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.brown),
        borderRadius: BorderRadius.circular(12)),

    labelText: labelText,
    hintText: hintText,
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10)
  );
}