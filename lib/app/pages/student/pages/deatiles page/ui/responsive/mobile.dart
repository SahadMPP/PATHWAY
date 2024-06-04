import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/core/constants/constants.dart';
import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:path_way_flu/app/data/middleware/auth.dart';
import 'package:path_way_flu/app/data/middleware/student.dart';
import 'package:path_way_flu/app/data/middleware/teacher.dart';
import 'package:path_way_flu/app/data/model/lession.dart';
import 'package:path_way_flu/app/data/model/tutoral.dart';
import 'package:path_way_flu/app/pages/student/widgets/deatile_page_course_card.dart';
import 'package:path_way_flu/main.dart';

class VideoPlayMob extends StatefulWidget {
  final Lesson lesson;
  const VideoPlayMob({super.key, required this.lesson});

  @override
  State<VideoPlayMob> createState() => _VideoPlayMobState();
}

class _VideoPlayMobState extends State<VideoPlayMob> {
  late CachedVideoPlayerController videoPlayerController;
  late CustomVideoPlayerController _customVideoPlayerController;

  bool isLoading = false;
  bool isDiscription = true;

  String discription = "";

  String videoUrlDefult =
      "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";

  @override
  void initState() {
    super.initState();
    initilizeVideoPlayer(videoUrlDefult);
  }

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child:
                          SvgPicture.asset("asset/icons/arrow-left.svg")),
                  const SizedBox(height: 20),
                  isLoading
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: .5)),
                            child: CustomVideoPlayer(
                                customVideoPlayerController:
                                    _customVideoPlayerController),
                          ),
                        )
                      : const Center(child: CircularProgressIndicator()),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            "${AuthApi.baseUrlImage}${widget.lesson.profileImage}"),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.lesson.title.toUpperCase(),
                              style: kSubtitleTextSyule.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 19,
                                height: 1.5,
                              )),
                          const SizedBox(height: 5),
                          Text(widget.lesson.creatorName.toUpperCase(),
                              style: GoogleFonts.quicksand(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ],
                  ),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 170),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.star_border, color: Colors.grey),
                        Text(
                          "4.8",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.timer, color: Colors.grey),
                        Text("7.2 Hours", style: TextStyle(color: Colors.grey)),
                        SizedBox(height: 30),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: isDiscription,
              child: Container(
                padding: const EdgeInsets.all(12),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Discription',
                      style: GoogleFonts.roboto(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      discription,
                      style: GoogleFonts.quicksand(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.onSecondary),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Theme.of(context).colorScheme.secondary,
              ),
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Course Content',
                        style: kHeadingextStyle,
                      ),
                      const SizedBox(height: 30),
                      FutureBuilder(
                          future: TeacherApi.getTotorial(widget.lesson.id),
                          builder: (context, AsyncSnapshot snapshot) {
                            if (!snapshot.hasData) {
                              return const Center(
                                  child: CircularProgressIndicator());
                            } else {
                              List<Tutorial> tutoral = snapshot.data!;
                              if (tutoral.isEmpty) {
                                return const Center(
                                    child: Text("No Tutorial in available"));
                              } else {
                                return SizedBox(
                                  height: 350,
                                  child: ListView.builder(
                                      itemCount: tutoral.length,
                                      itemBuilder: (context, index) {
                                        return CourseContent(
                                            functionn: () {
                                              setState(() {
                                                discription =
                                                    tutoral[index].discription;
                                              });

                                              int count = index + 1;
                                              StudentApi
                                                  .getOneProgerssForUpdate(
                                                      context: context,
                                                      studentId: userId!,
                                                      lessonId:
                                                          widget.lesson.id,
                                                      count: count);
                                              _customVideoPlayerController
                                                  .dispose();
                                              setState(() {
                                                initilizeVideoPlayer(
                                                    tutoral[index].videoUrl);
                                              });
                                            },
                                            number: index,
                                            title: tutoral[index].title,
                                            creatorName: tutoral[index].level);
                                      }),
                                );
                              }
                            }
                          }),
                    ],
                  ),
                ),
              ]),
            )),
          ],
        ),
      ),
    );
  }

  void initilizeVideoPlayer(videoUrl) async {
    setState(() {
      isLoading = false;
    });
    await Future.delayed(const Duration(seconds: 1));
    CachedVideoPlayerController videoPlayerController;
    videoPlayerController = CachedVideoPlayerController.network(videoUrl)
      ..initialize().then((value) => setState(() {}));
    // ignore: use_build_context_synchronously
    _customVideoPlayerController = CustomVideoPlayerController(
      // ignore: use_build_context_synchronously
      context: context,
      videoPlayerController: videoPlayerController,
    );
    setState(() {
      isLoading = true;
    });
  }
}
