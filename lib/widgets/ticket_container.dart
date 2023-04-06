import 'package:flutter/material.dart';

class TicketContainer extends StatelessWidget {
  final bool? isColor;
  const TicketContainer({super.key, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        border: Border.all(
            width: 2.5,
            color: isColor == null ? Colors.white : const Color(0xFF8ACCF7)),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
