import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: text,
        hintStyle: TextStyle(
          color: Colors.black,
          fontSize: AppLayout.getWidth(15),
        ),
        prefixIcon: Icon(icon, color: const Color(0xFFBFC2DF)),
        contentPadding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15)),
        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
          borderSide: const BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }
}
