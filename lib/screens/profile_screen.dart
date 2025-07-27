import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  Widget sectionCard({required IconData icon, required String title, required String content}) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        contentPadding: EdgeInsets.all(16),
        leading: CircleAvatar(
          backgroundColor: Colors.indigo.shade100,
          child: Icon(icon, color: Colors.indigo),
        ),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(content),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          // ✅ Improved image layout
          Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.indigo, width: 3),
            ),
            child: ClipOval(
              child: Image.asset(
                'assets/images/profile.jpeg',
                fit: BoxFit.contain, // 🔁 Show full image (head + face)
              ),
            ),
          ),
          SizedBox(height: 12),
          Text(
            'Zeeshan Khan',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.indigo),
          ),
          Text(
            'Flutter Developer Intern',
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
          SizedBox(height: 24),
          sectionCard(
            icon: Icons.school,
            title: 'Education',
            content: 'BS in Computer Science\nGomal University (2021–2025)',
          ),
          sectionCard(
            icon: Icons.code,
            title: 'Skills',
            content: 'Flutter, Firebase, Dart, Git, Android Studio, VS Code',
          ),
          sectionCard(
            icon: Icons.info,
            title: 'About Me',
            content: 'Passionate Flutter developer eager to build beautiful apps and grow through real-world projects.',
          ),
        ],
      ),
    );
  }
}
