import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mahesh_flutter_portfolio/presentation/section_list_page.dart';
import 'package:mahesh_flutter_portfolio/presentation/static_data_page.dart';

import '../widgets/contact_link.dart';
import '../widgets/widget_list.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});
  @override
  Widget build(BuildContext context) => Section(
    anchorKey: sectionKeys['About'], eyebrow: 'A LITTLE ABOUT ME', title: 'About Me',
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(PortfolioData.summary, style: bodyStyle),
      const SizedBox(height: 22),
      Wrap(spacing: 12, runSpacing: 12, children: [
        InfoTile(icon: Icons.phone_android, title: 'Specialization', value: 'Cross-platform mobile apps'),
        InfoTile(icon: Icons.work_outline, title: 'Experience', value: PortfolioData.experience),
        InfoTile(icon: Icons.location_on_outlined, title: 'Based in', value: 'Chennai, India'),
      ]),
    ]),
  );
}