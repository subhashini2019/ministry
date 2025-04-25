import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Homepage/homepage _widgets.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({super.key});

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
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
            child: const Text('About', style: TextStyle(color: Colors.white)),
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
            RichText(
              text: const TextSpan(
                style: TextStyle(fontSize: 15, color: Colors.black),
                children: [
                  TextSpan(
                    text: 'இயேசு யார்?\n\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                    'இயேசு என்பவர் ஒரு மனிதராக கருதப்பட்டாலும் அவர் ஒரு கன்னியின் வயிற்றில் பிறந்த அதிசயமானவர். '
                        'ஆதியில் ஆதாமும் ஏவாளும் தவறு செய்தபோது, பிசாசை அழிக்க ஸ்திரீயின் வித்தாக தோன்றுவார் என்று கடவுளால் முன்னுரைக்கப்பட்டவர். '
                        'உலகத்தை நியாயம் தீர்க்கப்போகிறவர். அவரைக் குறித்து வேதம் "ஒரு நாளைக் குறித்திருக்கிறார்; அதிலே அவர் தாம் நியமித்த மனுஷனைக்கொண்டு, '
                        'பூலோகத்தை நீதியாய் நியாயந்தீர்ப்பார்; அந்த மனுஷனை மரித்தோரிலிருந்து எழுப்பினதினாலே அதின் நிச்சயத்தை எல்லாருக்கும் விளங்கப்பண்ணினார்" என்று அப்போஸ்தலர் 17:31ல் சொல்கிறது.\n\n',
                  ),
                  TextSpan(
                    text: 'இரட்சிப்பு என்றால் என்ன?\n\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                    'பாவத்தின் தண்டனையில் இருந்து காப்பாற்றப்படுதலே இரட்சிப்பு ஆகும். இயேசு கிறிஸ்துவை உள்ளத்தில் விசுவாசிக்கும்போது நாம் இரட்சிக்கப்படுகிறோம்.\n\n'
                        'வசனம்: ...கர்த்தராகிய இயேசுவை நீ உன் வாயினாலே அறிக்கையிட்டு, தேவன் அவரை மரித்தோரிலிருந்து எழுப்பினாரென்று உன் இருதயத்திலே விசுவாசித்தால் '
                        'இரட்சிக்கப்படுவாய். நீதியுண்டாக இருதயத்திலே விசுவாசிக்கப்படும், இரட்சிப்புண்டாக வாயினாலே அறிக்கைபண்ணப்படும். ரோமர் 10: 9,10\n\n',
                  ),
                  TextSpan(
                    text: 'சுவிசேஷம் என்றால் என்ன?\n\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                    'சுவிசேஷம் என்ற வட மொழி சொல்லுக்கு \'நற்செய்தி\' என்று பொருள். '
                        'வானத்தையும் பூமியையும் படைத்த இறைவன் மனிதனாக பூமிக்கு வந்து, மனுக்குலத்தின் பாவத்திற்கான பரிகாரத்தை செய்து முடித்து விட்டார் என்பதே நற்செய்தி. '
                        '"ராஜ்யத்தினுடைய இந்தச் சுவிசேஷம் பூலோகமெங்குமுள்ள சகல ஜாதிகளுக்கும் சாட்சியாகப் பிரசங்கிக்கப்படும், '
                        'அப்போது முடிவு வரும்" என்று இயேசு மத்தேயு 24:14ல் சொல்லியிருப்பதால் சுவிசேஷம் அறிவிக்கப்படுகிறது.\n\n',
                  ),
                  TextSpan(
                    text: 'பைபிள் ஏன் படிக்க வேண்டும் ?\n\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                    'பைபிளில் இந்த வானமும் பூமியும் உண்டான வரலாறு, மனிதர்களின் தோற்றமும் வீழ்ச்சியும், '
                        'அவர்களை மீட்க கடவுளின் திட்டமும் எழுதப்பட்டுள்ளது. ஒவ்வொரு மனிதனும் படிக்கவேண்டிய ஒன்று.\n\n',
                  ),
                  TextSpan(
                    text: 'மனம்திரும்புதல் என்றால் என்ன?\n\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                    'நமது பாவங்களுக்காக வருந்தி, அவைகளை விட்டு விலகி, கடவுளுக்கு அஞ்சி நடக்க நம்மை ஒப்புக்கொடுப்பதே மனம்திரும்புதல் ஆகும். '
                        'தன் பாவங்களை மறைக்கிறவன் வாழ்வடையமாட்டான்; அவைகளை அறிக்கை செய்து விட்டுவிடுகிறவனோ இரக்கம் பெறுவான். -நீதிமொழிகள் 28:13\n',
                  ),
                ],
              ),

              textAlign: TextAlign.start,
            ),

            const SizedBox(height: 30),
            WebsiteFooter(),
          ],
        ),
      ),
    );
  }
}
