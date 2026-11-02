import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactLink extends StatelessWidget {
  final IconData icon;
  final String label, url;

  const ContactLink({super.key, required this.icon, required this.label, required this.url});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => open(url),
      borderRadius: BorderRadius.circular(8),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        Icon(icon, color: const Color(0xFF9AA7FF), size: 19),
        const SizedBox(width: 9),
        Text(label, style: const TextStyle(color: Colors.white70)),
      ]),
    );
  }
}

class BulletText extends StatelessWidget {
  final String text;

  const BulletText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 7),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text('•  ', style: TextStyle(color: Color(0xFF9AA7FF))),
        Expanded(child: Text(text, style: const TextStyle(color: Color(0xFFAFB8CC), height: 1.5))),
      ]),
    );
  }
}

const bodyStyle = TextStyle(color: Color(0xFFAFB8CC), fontSize: 15, height: 1.8);

Future<void> open(String value) async {
  final uri = Uri.tryParse(value);
  if (uri == null) return;
  if (await canLaunchUrl(uri)) await launchUrl(uri, mode: LaunchMode.externalApplication);
}
