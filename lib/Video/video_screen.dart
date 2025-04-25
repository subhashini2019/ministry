import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../Homepage/homepage _widgets.dart';

class YouTubePlayerScreen extends StatefulWidget {
  final List<String> videoUrls;

  const YouTubePlayerScreen({super.key, required this.videoUrls});

  @override
  State<YouTubePlayerScreen> createState() => _YouTubePlayerScreenState();
}

class _YouTubePlayerScreenState extends State<YouTubePlayerScreen> {
  final List<YoutubePlayerController> _controllers = [];

  @override
  void initState() {
    super.initState();
    for (String url in widget.videoUrls) {
      final videoId = YoutubePlayerController.convertUrlToId(url);
      if (videoId != null) {
        final controller = YoutubePlayerController.fromVideoId(
          videoId: videoId,
          params: const YoutubePlayerParams(
            mute: false,
            showControls: true,
            showFullscreenButton: true,
            enableCaption: false,
          ),
        );
        _controllers.add(controller);
      }
    }
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.close();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerScaffold(
      controller: _controllers.isNotEmpty
          ? _controllers.first
          : YoutubePlayerController(),
      builder: (context, _) {
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
                onPressed: () => Get.toNamed("/video"),
                child:
                const Text('Videos', style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                onPressed: () => Get.toNamed("/prayer"),
                child:
                const Text('Prayers', style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed("/children");
                },
                child: const Text('For Children', style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                onPressed: () => Navigator.pushNamed(context, '/faq'),
                child:
                const Text('FAQs', style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(width: 10),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                for (int i = 0; i < _controllers.length; i++)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            width: 650,
                            height: 450,
                            child: YoutubePlayer(controller: _controllers[i]),
                          ),
                        ),
                        const SizedBox(height: 8),
                        if (YoutubePlayerController.convertUrlToId(widget.videoUrls[i]) == 'iMZjanXBVkY')
                          Text(
                            "இயேசுவின் அன்பு என்பது மனித மனதை மாற்றும் தெய்வீக சக்தியாகும்... "
                                "இந்த அன்பு தனிமையில் வாழ்வதற்காக அல்ல, ஒருமையாக வாழ அனைவரையும் அழைக்கும் அழைப்பாகும்.",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                            textAlign: TextAlign.center,
                          ),

                      ],
                    ),
                  ),
                SizedBox(height: 30),
                WebsiteFooter(),],
            ),
          ),
        );
      },
    );
  }
}
