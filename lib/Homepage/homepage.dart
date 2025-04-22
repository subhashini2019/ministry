import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Commonfile/assets.dart';
import 'homepage _widgets.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

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
            onPressed: () {
              Navigator.pushNamed(context, '/about');
            },
            child: const Text('About', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed("/video");
            },
            child: const Text('Video', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed("/faq");
            },
            child: const Text('PRAYER', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed("/faq");
            },
            child: const Text('FAQ', style: TextStyle(color: Colors.white)),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(david),
              const SizedBox(height: 40),
              const Text(
                "இயேசுவின் அன்பை ஒன்றாக அனுபவியுங்கள்",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 25),
              const Text(
                "இறைவனுடைய அன்பு நம் இருதயங்களில் பரிசுத்த ஆவியினால் ஊற்றப்பட்டுள்ளது.",
                style: TextStyle(fontSize: 18, color: Colors.lightBlue),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "இயேசுவின் அன்பு என்பது மனித மனதை மாற்றும் தெய்வீக சக்தியாகும்... "
                      "இந்த அன்பு தனிமையில் வாழ்வதற்காக அல்ல, ஒருமையாக வாழ அனைவரையும் அழைக்கும் அழைப்பாகும்.",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                "தேவனுடைய இதயத்திற்கு ஏற்றவன் – தாவீதின் பயணம் .",
                style: TextStyle(fontSize: 18, color: Colors.lightBlue),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "தாவீது என்பது பழைய ஏற்பாட்டில் ஒரு மிக முக்கியமான நபர்... "
                      "தாவீது ஒரு நல்ல இசைக் கலைஞராய், கவிஞராய் மற்றும் தேவனுடைய இதயத்திற்கு ஏற்ற மனிதன் என அழைக்கப்பட்டவர்",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                "தாவீதும் கோலியாத்தும் வென்ற கதை",
                style: TextStyle(color: Colors.blue, fontSize: 18),
              ),
              const SizedBox(height: 15),
              const Text(
                "அதற்குத் தாவீது: பெலிஸ்தனை நோக்கி: ..."
                    "(1 சாமுவேல் 17:45)",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "இந்த வசனம், தாவீது கொலியாத்துடன் நேரடியாகப் பேசும் முக்கிய தருணத்தைப் பதிவு செய்கிறது... "
                      "நாம் வெற்றி பெறலாம்.",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                "தாவீதை அவர்களுக்கு ராஜாவாக ஏற்படுத்தி... (அப்போஸ்தலர் 13:22)",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "இந்த வசனம் அப்போஸ்தலர் பவுல் உரையாற்றும் போது... "
                      "தேவனுடைய சித்தத்திற்கேற்ப வாழும் நபரைக் கடவுள் தேடுகிறார். தாவீது அவருக்கு உகந்தவன்.",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 30),
              Image.asset(subhashini),
              const SizedBox(height: 40),
              const FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
