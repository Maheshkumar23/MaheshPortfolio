import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mahesh_flutter_portfolio/presentation/section_list_page.dart';
import 'package:mahesh_flutter_portfolio/presentation/static_data_page.dart';

import '../widgets/contact_link.dart';
import '../widgets/tag_page.dart';
import '../widgets/widget_list.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final wide = MediaQuery.sizeOf(context).width >= 760;
    final intro = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Tag(text: 'AVAILABLE FOR OPPORTUNITIES'),
        const SizedBox(height: 22),
        const Text('Hello, I’m', style: TextStyle(color: Colors.white70, fontSize: 22)),
        const SizedBox(height: 5),
        Text(PortfolioData.name,
            style: TextStyle(
              fontSize: wide ? 58 : 42,
              height: 1.08,
              fontWeight: FontWeight.w900,
              letterSpacing: -1.8,
            )),
        const SizedBox(height: 12),
        const Text('Building mobile experiences with Flutter.',
            style: TextStyle(
              color: Color(0xFF9AA7FF),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            )),
        const SizedBox(height: 18),
        Text(PortfolioData.summary,
            style: const TextStyle(
              color: Color(0xFFAFB8CC),
              fontSize: 16,
              height: 1.8,
            )),
        const SizedBox(height: 26),
        Wrap(spacing: 12, runSpacing: 12, children: [
          FilledButton.icon(
            onPressed: () => open(PortfolioData.resumeUrl),
            icon: const Icon(Icons.download_rounded),
            label: const Text('View Resume'),
          ),
          OutlinedButton.icon(
            onPressed: () => open('mailto:${PortfolioData.email}'),
            icon: const Icon(Icons.mail_outline),
            label: const Text('Contact Me'),
          ),
        ]),
        const SizedBox(height: 28),
        Text(PortfolioData.location, style: const TextStyle(color: Colors.white54)),
      ],
    );

    return Container(
      key: sectionKeys['Home'],
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        gradient: const LinearGradient(
          colors: [Color(0xFF171F3A), Color(0xFF10182D), Color(0xFF121426)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(color: Colors.white.withValues(alpha: .08)),
      ),
      child: wide
          ? Row(children: [
              Expanded(flex: 3, child: intro),
              const SizedBox(width: 45),
              const Expanded(child: ProfileVisual())
            ])
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [intro, const SizedBox(height: 36), const ProfileVisual()]),
    );
  }
}
