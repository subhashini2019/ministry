import 'package:davidraj_s/Contact/contact.dart';
import 'package:davidraj_s/FAQ/faq_screen.dart';
import 'package:davidraj_s/For%20Children/children_screen.dart';
import 'package:get/get.dart';
import '../Homepage/homepage.dart';
import '../Prayer/prayer_screen.dart';
import '../Video/video_screen.dart';
final routes = [
  GetPage(
    name: '/about',
    page: () => const Homepage(),
// binding: Controller(),
    transition: Transition.circularReveal,
  ),

GetPage(
name: '/video',
page: () => YouTubePlayerScreen(videoUrls: [
"https://youtu.be/iMZjanXBVkY?si=Op13oXR9A3ErIwb6",
"https://youtu.be/PGXnmw3oBO4?si=yNWMjoClR5_KyUCE",
"https://www.youtube.com/watch?v=7Q6mTH63lJE&t=1s",
  "https://youtu.be/A-Q7bj8WGug?si=vUZS1DmxtrluOA-_",
  "https://youtu.be/-RjMsWzqSHQ?si=rKS7s1M6uX1he3aX",
  "https://youtu.be/KqRmXjzgG68?si=34CDchAxblzewQjg",
  "https://youtu.be/EvPJvGGdbZ8?si=fXZLquXyuZ5Zcq9P",
  "https://youtu.be/SZRoEeshtZY?si=KBxrUpAmcUZWQdzH",
  "https://youtu.be/Exg4EHk4S8Q?si=t-GLzGslwBqkDHPQ",
  "https://youtu.be/aoT0deHH3zI?si=MiqzYuMUbGnJc37S",
  "https://youtu.be/IX_ZiaOJAYg?si=iXSJ5Rl73Ugy3uHc",
]),
transition: Transition.circularReveal,
),
  GetPage(
    name: '/prayer',
    page: () => const PrayerScreen(),
// binding: Controller(),
    transition: Transition.circularReveal,
  ),
  GetPage(
    name: '/children',
    page: () => const ChildrenScreen(),
// binding: Controller(),
    transition: Transition.circularReveal,
  ),
  GetPage(
    name: '/faq',
    page: () => const FaqScreen(),
// binding: Controller(),
    transition: Transition.circularReveal,
  ),
  GetPage(
    name: '/contact',
    page: () => ContactScreen(),
// binding: Controller(),
    transition: Transition.circularReveal,
  ),
];
