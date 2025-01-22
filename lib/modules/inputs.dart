import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputHome extends StatelessWidget {
  const InputHome({super.key, this.label, this.hint, this.ephemeral, this.controll, this.eventChange, this.colorItems, this.borderColor, this.lengthText, this.counter,  this.typeInput, required this.emoji, required this.width, required this.height});
  final IconData emoji;
  final String? label;
  final String? hint;
  final bool? ephemeral;
  final TextEditingController? controll;
  final dynamic eventChange;
  final Color? colorItems;
  final Color? borderColor;
  final int? lengthText;
  final bool? counter;
  final TextInputType? typeInput;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextField(
        maxLength: lengthText ?? null,
        obscureText: ephemeral ?? false,
        controller: controll,
        keyboardType: typeInput ?? null,
        inputFormatters: typeInput != null ? [FilteringTextInputFormatter.digitsOnly] : null,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 8, right: 5),
            child: Icon(emoji, size: 30, color: colorItems ?? Colors.white),
          ),
          labelText: label ?? "",
          hintText: hint ?? "",
          labelStyle: TextStyle(color: colorItems ?? Colors.white),
          // filled: true,
          // fillColor: colorItems,
          border: const OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor ?? Color.fromARGB(255, 19, 88, 144))
          ),
          counterText: counter == true && lengthText != null ? '${controll?.text.length}/${lengthText}' : ""
        ),
        // Inserir outros eventos se nescessarios.
        onChanged: (value) => eventChange(value),
      ),
    );
  }
}