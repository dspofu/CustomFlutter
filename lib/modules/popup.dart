import 'package:flutter/material.dart';

class Popup {
  const Popup({required this.title, required this.content, this.closeText, this.controll});
  final String title;
  final String content;
  final String? closeText;
  final TextEditingController? controll;

  static void alert(BuildContext context, {required String title, required String content, String? closeText, TextEditingController? controll}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              child: Text(closeText ?? "Fechar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  static void input(BuildContext context,
      {required String title,
      required String content,
      String? label,
      String? hint,
      Color? color,
      TextEditingController? controll}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            TextField(
              controller: controll,
              decoration: InputDecoration(
                labelText: label ?? "Digite aqui.",
                hintText: hint ?? "",
                labelStyle: TextStyle(color: color ?? Colors.white),
                border: const OutlineInputBorder(),
                focusedBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 19, 88, 144))),
              ),
            ),
          ],
        );
      },
    );
  }
}