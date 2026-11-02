import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mahesh_flutter_portfolio/presentation/project_section.dart';

import '../widgets/widget_list.dart';
import 'about_page.dart';
import 'contact_section.dart';
import 'experience_section.dart';
import 'hero_page_section.dart';

class PortfolioHome extends StatelessWidget {
  const PortfolioHome({super.key});

  final List<String> navItems = const ['Home', 'About', 'Skills', 'Projects', 'Experience', 'Contact'];

  void goTo(BuildContext context, String section) {
    final key = sectionKeys[section];
    if (key?.currentContext != null) {
      Scrollable.ensureVisible(
        key!.currentContext!,
        duration: const Duration(milliseconds: 550),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final isWide = MediaQuery.sizeOf(context).width >= 850;
    return Scaffold(
      body: SelectionArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              backgroundColor: const Color(0xEE0B1020),
              surfaceTintColor: Colors.transparent,
              title: const Text('MK',
                  style: TextStyle(
                    color: Color(0xFF9AA7FF),
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.5,
                  )),
              actions: isWide
                  ? navItems
                      .map((item) => TextButton(
                            onPressed: () => goTo(context, item),
                            child: Text(item, style: const TextStyle(color: Colors.white70)),
                          ))
                      .toList()
                  : [
                      PopupMenuButton<String>(
                        icon: const Icon(Icons.menu_rounded),
                        onSelected: (value) => goTo(context, value),
                        itemBuilder: (_) =>
                            navItems.map((item) => PopupMenuItem(value: item, child: Text(item))).toList(),
                      ),
                    ],
            ),
            SliverToBoxAdapter(
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1120),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 56),
                        HeroSection(),
                        SizedBox(height: 100),
                        AboutSection(),
                        SizedBox(height: 88),
                        SkillsSection(),
                        SizedBox(height: 88),
                        ProjectsSection(),
                        SizedBox(height: 88),
                        ExperienceSection(),
                        SizedBox(height: 88),
                        ContactSection(),
                        SizedBox(height: 48),
                        FooterSection(),
                        SizedBox(height: 28),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final Map<String, GlobalKey> sectionKeys = {
  'Home': GlobalKey(),
  'About': GlobalKey(),
  'Skills': GlobalKey(),
  'Projects': GlobalKey(),
  'Experience': GlobalKey(),
  'Contact': GlobalKey(),
};
