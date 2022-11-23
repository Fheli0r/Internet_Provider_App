import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final Widget prefix;
  final bool obscure;
  final TextInputType textInputType;
  final Function(String) onchanged;
  final bool enable;

  CustomTextField(
      {required this.enable,
      required this.hint,
      required this.obscure,
      required this.onchanged,
      required this.prefix,
      required this.textInputType});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(32),
      ),
      padding: prefix != null ? null : const EdgeInsets.only(left: 16),
      child: TextField(
        obscureText: obscure,
        keyboardType: textInputType,
        onChanged: onchanged,
        enabled: enable,
        decoration: InputDecoration(
          hintText: hint,
          border: InputBorder.none,
          prefixIcon: prefix,
        ),
        textAlignVertical: TextAlignVertical.center,
      ),
    );
  }
}
