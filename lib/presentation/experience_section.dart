import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mahesh_flutter_portfolio/presentation/section_list_page.dart';

import '../widgets/contact_link.dart';
import '../widgets/widget_list.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) => Section(
        anchorKey: sectionKeys['Experience'],
        eyebrow: 'MY JOURNEY',
        title: 'Experience',
        child: CardSurface(
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Icon(Icons.work_history_outlined, color: Color(0xFF9AA7FF), size: 30),
          const SizedBox(width: 18),
          const Expanded(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Flutter Mobile Application Developer', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text('Junior Flutter Developer · Maxpro Technologies Private Limited',
                style: TextStyle(color: Color(0xFF9AA7FF))),
            SizedBox(height: 14),
            Text('Key responsibilities', style: TextStyle(fontWeight: FontWeight.w700)),
            SizedBox(height: 8),
            BulletText('Developing and maintaining cross-platform mobile application features.'),
            BulletText('Integrating REST APIs and Firebase services.'),
            BulletText('Debugging production issues and maintaining existing applications.'),
            BulletText('Collaborating with backend and QA teams during development and testing.'),
          ])),
        ])),
      );
}
