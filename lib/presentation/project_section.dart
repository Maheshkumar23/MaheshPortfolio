import 'package:flutter/cupertino.dart';
import 'package:mahesh_flutter_portfolio/presentation/project_info.dart';
import 'package:mahesh_flutter_portfolio/presentation/section_list_page.dart';
import 'package:mahesh_flutter_portfolio/presentation/static_data_page.dart';

import '../widgets/widget_list.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) => Section(
        anchorKey: sectionKeys['Skills'],
        eyebrow: 'MY TOOLKIT',
        title: 'Technical Skills',
        child: Wrap(
            spacing: 12,
            runSpacing: 12,
            children: PortfolioData.skills.map((skill) => SkillChip(label: skill)).toList()),
      );
}

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var projects = [
      ProjectInfo(
          'IndiaShoppe',
          'B2B e-commerce application',
          'Worked on mobile application features, product and cart flows, REST API integration and production issue debugging.',
          ['Flutter', 'Dart', 'REST APIs']),
      ProjectInfo(
          'Face Attendance',
          'Attendance management',
          'Contributed to an attendance application involving mobile UI and backend data integration.',
          ['Flutter', 'API Integration', 'SQL backend']),
      ProjectInfo(
          'MI Connect',
          'Order management',
          'Worked on order-related mobile workflows, API communication and user-facing application features.',
          ['Flutter', 'REST APIs', 'Debugging']),
      ProjectInfo(
          'Campaign Tracking',
          'Social media campaign tracking',
          'Contributed to features for tracking and managing campaign-related information.',
          ['Flutter', 'Dart', 'API Integration']),
      ProjectInfo('Expense App', 'Expense management',
          'Worked on an application experience for recording and managing expenses.', ['Flutter', 'Mobile UI']),
      ProjectInfo(
          'HRMS',
          'Human resource management',
          'Personal/team project work exploring attendance workflows and Firebase integration.',
          ['Flutter', 'Firebase']),
    ];
    return Section(
      anchorKey: sectionKeys['Projects'],
      eyebrow: 'SELECTED WORK',
      title: 'Projects',
      subtitle: 'A selection of mobile applications and product areas I have worked on.',
      child: LayoutBuilder(builder: (context, constraints) {
        final count = constraints.maxWidth >= 900
            ? 3
            : constraints.maxWidth >= 580
                ? 2
                : 1;
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: projects.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: count,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            mainAxisExtent: 245,
          ),
          itemBuilder: (_, index) => ProjectCard(project: projects[index]),
        );
      }),
    );
  }
}
