import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WebsiteFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade900,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Footer top part
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Compassionate Love of Calvary Ministries',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () => Get.toNamed("/about"),
                    child:
                    const Text('About', style: TextStyle(color: Colors.white)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Businesses', style: TextStyle(color: Colors.white)),
                  ),
                  TextButton(
                    onPressed: ()  => Get.toNamed("/contact"),
                    child: Text('Contact', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Divider
          Divider(color: Colors.grey.shade700),

          const SizedBox(height: 12),

          // Footer bottom part
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '© 2025 Compassionate Love of Calvary Minstries. All rights reserved.',
                style: TextStyle(color: Colors.grey.shade400),
              ),
              Row(
                children: [
                  Icon(Icons.facebook, color: Colors.white),
                  SizedBox(width: 12),

                 // Icon(Icons.linkedin, color: Colors.white),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
