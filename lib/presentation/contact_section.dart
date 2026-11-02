import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mahesh_flutter_portfolio/presentation/section_list_page.dart';
import 'package:mahesh_flutter_portfolio/presentation/static_data_page.dart';

import '../widgets/contact_link.dart';
import '../widgets/widget_list.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) => Section(
        anchorKey: sectionKeys['Contact'],
        eyebrow: 'LET’S CONNECT',
        title: 'Have a project or opportunity?',
        subtitle: 'I’m open to discussing Flutter development opportunities and interesting projects.',
        child: CardSurface(
            child: Wrap(
          spacing: 22,
          runSpacing: 18,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            ContactLink(icon: Icons.email_outlined, label: PortfolioData.email, url: 'mailto:${PortfolioData.email}'),
            ContactLink(icon: Icons.phone_outlined, label: PortfolioData.phone, url: 'tel:${PortfolioData.phone}'),
            ContactLink(icon: Icons.link, label: 'LinkedIn', url: PortfolioData.linkedIn),
            ContactLink(icon: Icons.code, label: 'GitHub', url: PortfolioData.github),
          ],
        )),
      );
}
