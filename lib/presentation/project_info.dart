import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/tag_page.dart';
import '../widgets/widget_list.dart';

class ProjectInfo {
  final String name, category, description;
  final List<String> tags;

  const ProjectInfo(this.name, this.category, this.description, this.tags);
}

class ProjectCard extends StatelessWidget {
  final ProjectInfo project;

  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) => CardSurface(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Icon(Icons.phone_android_rounded, color: Color(0xFF9AA7FF), size: 28),
          const SizedBox(height: 14),
          Text(project.name, style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(project.category, style: const TextStyle(color: Color(0xFF9AA7FF), fontSize: 13)),
          const SizedBox(height: 10),
          Expanded(
              child: Text(project.description,
                  style: const TextStyle(
                    color: Color(0xFFAFB8CC),
                    height: 1.5,
                    fontSize: 13,
                  ))),
          Wrap(spacing: 6, runSpacing: 6, children: project.tags.map((tag) => Tag(text: tag)).toList()),
        ]),
      );
}
