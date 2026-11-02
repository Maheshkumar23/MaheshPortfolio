import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../presentation/static_data_page.dart';
import 'contact_link.dart';

class ProfileVisual extends StatelessWidget {
  const ProfileVisual({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: Container(
          width: 230,
          height: 230,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: const LinearGradient(colors: [Color(0xFF7C8CFF), Color(0xFF42D6C5)]),
            boxShadow: [BoxShadow(color: const Color(0xFF7C8CFF).withValues(alpha: .22), blurRadius: 65)],
          ),
          child: const Center(child: Icon(Icons.code_rounded, size: 100, color: Color(0xFF0B1020))),
        ),
      );
}

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) => Center(
          child: Text(
        '© ${DateTime.now().year} ${PortfolioData.name}. Built with Flutter.',
        style: const TextStyle(color: Colors.white38, fontSize: 12),
      ));
}

class Section extends StatelessWidget {
  final GlobalKey? anchorKey;
  final String eyebrow, title;
  final String? subtitle;
  final Widget child;

  const Section(
      {super.key, this.anchorKey, required this.eyebrow, required this.title, this.subtitle, required this.child});

  @override
  Widget build(BuildContext context) => Container(
        key: anchorKey,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(eyebrow,
              style: const TextStyle(
                  color: Color(0xFF9AA7FF), fontSize: 11, fontWeight: FontWeight.bold, letterSpacing: 2)),
          const SizedBox(height: 9),
          Text(title, style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w800, letterSpacing: -.6)),
          if (subtitle != null) ...[
            const SizedBox(height: 9),
            Text(subtitle!, style: bodyStyle),
          ],
          const SizedBox(height: 25),
          child,
        ]),
      );
}

class CardSurface extends StatelessWidget {
  final Widget child;

  const CardSurface({super.key, required this.child});

  @override
  Widget build(BuildContext context) => Container(
        width: double.infinity,
        padding: const EdgeInsets.all(22),
        child: child,
        decoration: BoxDecoration(
          color: const Color(0xFF141C31),
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Colors.white.withValues(alpha: .07)),
        ),
      );
}

class InfoTile extends StatelessWidget {
  final IconData icon;
  final String title, value;

  const InfoTile({super.key, required this.icon, required this.title, required this.value});

  @override
  Widget build(BuildContext context) => Container(
        width: 220,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(color: const Color(0xFF141C31), borderRadius: BorderRadius.circular(14)),
        child: Row(children: [
          Icon(icon, color: const Color(0xFF9AA7FF)),
          const SizedBox(width: 12),
          Expanded(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(title, style: const TextStyle(color: Colors.white54, fontSize: 11)),
            const SizedBox(height: 4),
            Text(value, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 12)),
          ])),
        ]),
      );
}

class SkillChip extends StatelessWidget {
  final String label;

  const SkillChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
            color: const Color(0xFF171F38),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: const Color(0xFF7C8CFF).withValues(alpha: .25))),
        child: Text(label, style: const TextStyle(color: Color(0xFFD8DEFF), fontSize: 13)),
      );
}
