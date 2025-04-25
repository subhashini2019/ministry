import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Homepage/homepage _widgets.dart';

class ChildrenScreen extends StatefulWidget {
  const ChildrenScreen({super.key});

  @override
  State<ChildrenScreen> createState() => _ChildrenScreenState();
}

class _ChildrenScreenState extends State<ChildrenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E4A66),
        title: Row(
          children: const [
            SizedBox(width: 10),
            Expanded(
              child: Text(
                'கல்வாரி அன்பின் மனதுருக்கம் ஊழியங்கள்',
                style: TextStyle(color: Colors.white),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Get.toNamed("/about"),
            child:
            const Text('About', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed("/video");
            },
            child: const Text('Videos', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed("/prayer");
            },
            child: const Text('Prayers', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed("/children");
            },
            child: const Text('For Children', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed("/faq");
            },
            child: const Text('FAQs', style: TextStyle(color: Colors.white)),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '''Children Stories''',
              style: TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.start,
            ),
            Image.asset('assets/childrenministry.png'),

            const SizedBox(height: 30),
            WebsiteFooter(),
          ],
        ),
      ),





    );
  }
}

