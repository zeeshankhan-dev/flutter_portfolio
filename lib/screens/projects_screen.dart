import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  final List<Map<String, String>> projects = [
    {
      'title': 'SkillHub App',
      'description': 'Freelance marketplace app built with Flutter & Firebase. Features role-based login, project posting, proposals.',
    },
    {
      'title': 'Portfolio App',
      'description': 'This app showcases my skills, projects, and contact info using Flutter UI components.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: projects.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 6,
          margin: const EdgeInsets.symmetric(vertical: 10),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: ListTile(
            contentPadding: const EdgeInsets.all(16),
            leading: CircleAvatar(
              backgroundColor: Colors.indigo.shade100,
              child: Icon(Icons.code, color: Colors.indigo),
            ),
            title: Text(
              projects[index]['title']!,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Text(
                projects[index]['description']!,
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        );
      },
    );
  }
}
