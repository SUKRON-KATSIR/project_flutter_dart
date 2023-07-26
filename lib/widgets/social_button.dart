import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SocialButton extends StatelessWidget {
  final String url;
  final IconData icon;
  final Color bgColor;
  const SocialButton({
    super.key,
    required this.url,
    required this.icon,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _launchURL(url);
      },
      child: CircleAvatar(
        radius: 18,
        backgroundColor: bgColor,
        child: Icon(
          icon,
          size: 20,
          color: Colors.white,
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
