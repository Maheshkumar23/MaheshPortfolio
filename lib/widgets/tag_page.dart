import 'package:flutter/cupertino.dart';

class Tag extends StatelessWidget {
  final String text;

  const Tag({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(color: const Color(0xFF252D4A), borderRadius: BorderRadius.circular(30)),
      child: Text(text, style: const TextStyle(color: Color(0xFFCBD2FF), fontSize: 10, fontWeight: FontWeight.w600)),
    );
  }
}
