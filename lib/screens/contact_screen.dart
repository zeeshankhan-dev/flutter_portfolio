import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  final String email = 'xeeshan463@gmail.com';
  final String phone = '+923494678746';
  final String github = 'https://github.com/zeeshankhan-dev';
  final String linkedin = 'https://linkedin.com/in/zeeshan-khan-dev';

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }


  Widget contactTile({required IconData icon, required String title, required String subtitle, required VoidCallback onTap}) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        contentPadding: EdgeInsets.all(16),
        leading: CircleAvatar(
          backgroundColor: Colors.indigo.shade100,
          child: Icon(icon, color: Colors.indigo),
        ),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        contactTile(
          icon: Icons.email,
          title: 'Email',
          subtitle: email,
          onTap: () => _launchURL('mailto:$email'),
        ),
        contactTile(
          icon: Icons.phone,
          title: 'Phone',
          subtitle: phone,
          onTap: () => _launchURL('tel:$phone'),
        ),
        contactTile(
          icon: Icons.link,
          title: 'GitHub',
          subtitle: github,
          onTap: () => _launchURL(github),
        ),
        contactTile(
          icon: Icons.link,
          title: 'LinkedIn',
          subtitle: linkedin,
          onTap: () => _launchURL(linkedin),
        ),
      ],
    );
  }
}
