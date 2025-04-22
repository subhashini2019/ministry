import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1A253F), // Dark navy blue background
      padding: const EdgeInsets.all(24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left Side - Title, Description, Social Icons
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hope',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Join us for worship and community outreach together.',
                  style: TextStyle(color: Colors.white70),
                ),
                const SizedBox(height: 16),
                Row(
                  // children: const [
                  //   Icon(FontAwesomeIcons.facebook, color: Colors.white, size: 20),
                  //   SizedBox(width: 16),
                  //   Icon(FontAwesomeIcons.instagram, color: Colors.white, size: 20),
                  //   SizedBox(width: 16),
                  //   Icon(FontAwesomeIcons.tiktok, color: Colors.white, size: 20),
                  //   SizedBox(width: 16),
                  //   Icon(FontAwesomeIcons.xTwitter, color: Colors.white, size: 20),
                  // ],
                ),
                const SizedBox(height: 16),
                const Text(
                  '© 2025. All rights reserved.',
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
          ),

          // Middle - Contact Info
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'FAITH',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(height: 8),
                Text('123-456-7890', style: TextStyle(color: Colors.white70)),
                Text('info@david-s-church.org', style: TextStyle(color: Colors.white70)),
              ],
            ),
          ),

          // Right Side - Email Subscription
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'LOVE',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Enter your email address',
                  style: TextStyle(color: Colors.white70),
                ),
                const SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Your email for updates',
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4A90E2), // Blue button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  ),
                  child: const Text("Join our community today"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
