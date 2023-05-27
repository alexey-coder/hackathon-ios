import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../../gen/assets.gen.dart';
import '../../gen/fonts.gen.dart';
import '../common_widgets/app_bar.dart';

class CoursesVideoLesson extends StatelessWidget {
   CoursesVideoLesson({Key? key}) : super(key: key);

  late VideoPlayerController controller = VideoPlayerController.network(videoUrl);
  final String videoUrl =
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: createAppBar(context: context, title: "title"),
        body: ListView(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                const Row(children: [
                  Text("урок 1",
                      style: TextStyle(
                          fontFamily: FontFamily.deeDee,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color.fromRGBO(18, 18, 18, 1))),
                  Spacer(),
                  Text("60мин",
                      style: TextStyle(
                          fontFamily: FontFamily.deeDee,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color.fromRGBO(124, 124, 123, 1))),
                ]),
               Stack(
                 fit: StackFit.loose,
                   children: [
                     ClipRRect(
                         borderRadius: BorderRadius.circular(12.0),
                         child: CachedNetworkImage(
                             width: MediaQuery.of(context).size.width,
                             height: 222,
                             imageUrl: "https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg",
                             fit: BoxFit.fill)),
                     Positioned.fill(
                         child: Align(
                             alignment: Alignment.center,
                             child: GestureDetector(
                             onTap: () {
                               if (controller.value.isPlaying) {
                                 controller.pause();
                               } else {
                                 controller.play();
                               }
                             },
                             child: Assets.playButton.image(width: 40, height: 40, fit: BoxFit.fill)
                         ))
                     )
                   ]),

                const Text("заголовок",
                    style: TextStyle(
                        fontFamily: FontFamily.deeDee,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Color.fromRGBO(18, 18, 18, 1))),
                const SizedBox(height: 8),
                const Text("Барокко. Бах. Гендель. Вы познакомитесь с принципами искусства и дизайна, которые помогут "
                    "вам видеть мир вокруг себя с новой перспективы. "
                    "Вы научитесь освобождать свою творческую мысль, избегая ограничений и "
                    "стереотипов, и будете стимулироват",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: FontFamily.deeDee)),
                const SizedBox(height: 8),
                const Text("смотреть полностью",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        fontFamily: FontFamily.deeDee,
                        color: Color.fromRGBO(18, 18, 18, 1))),


              ]),
            ]));
  }
}
