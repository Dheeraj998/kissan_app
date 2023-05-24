import 'package:flutter/material.dart';

class CustomSnackbar {
  static void show(BuildContext context, String message) {
    final snackBar = SnackBar(
        content: Text(message),
        backgroundColor: Colors.grey,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(10).copyWith(bottom: 10),
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(10.0), // Adjust the value as needed
        ));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
