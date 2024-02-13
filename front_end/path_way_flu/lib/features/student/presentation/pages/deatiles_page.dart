import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/core/constants/constants.dart';
import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:path_way_flu/features/admin/data/models/tutoral_model.dart';
import 'package:path_way_flu/features/student/data/repositories/student_api.dart';

class StudentvideoPlay extends StatefulWidget {
  final String subject;
  const StudentvideoPlay({super.key, required this.subject});

  @override
  State<StudentvideoPlay> createState() => _StudentvideoPlayState();
}

class _StudentvideoPlayState extends State<StudentvideoPlay> {
  late CachedVideoPlayerController videoPlayerController;
  late CustomVideoPlayerController _customVideoPlayerController;

  String videoUrlDefult =
      "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";

  @override
  void initState() {
    super.initState();
    initilizeVideoPlayer(videoUrlDefult);
  }

  @override
  Widget build(BuildContext context) {
    // setState(() {
    //   initilizeVideoPlayer();
    // });
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset("asset/icons/arrow-left.svg"),
                      SvgPicture.asset("asset/icons/more-vertical.svg"),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: .5)),
                    child: CustomVideoPlayer(
                        customVideoPlayerController:
                            _customVideoPlayerController),
                  ),
                  const SizedBox(height: 15),
                  Text("How to do multipucation",
                      style: kSubtitleTextSyule.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 19,
                        height: 1.5,
                      )),
                  const SizedBox(height: 5),
                  Text("Created by Kumar mohan",
                      style: GoogleFonts.quicksand(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(height: 10),
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
                        Text("7.2 Hours", style: TextStyle(color: Colors.grey))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
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
                      Text(
                        'Course Content',
                        style: kHeadingextStyle.copyWith(color: Colors.black),
                      ),
                      const SizedBox(height: 30),
                      FutureBuilder(
                          future: StudentApi.getTotorialStudent(widget.subject),
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
                                              _customVideoPlayerController
                                                  .dispose();
                                              setState(() {
                                                initilizeVideoPlayer(
                                                    tutoral[index].videoUrl);
                                              });
                                            },
                                            number: index,
                                            title: tutoral[index].title,
                                            creatorName:
                                                tutoral[index].creator);
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

  void initilizeVideoPlayer(videoUrl) {
    CachedVideoPlayerController videoPlayerController;
    videoPlayerController = CachedVideoPlayerController.network(videoUrl)
      ..initialize().then((value) => setState(() {}));
    _customVideoPlayerController = CustomVideoPlayerController(
      context: context,
      videoPlayerController: videoPlayerController,
    );
  }
}

class CourseContent extends StatelessWidget {
  final String title;
  final String creatorName;
  final int number;
  final VoidCallback functionn;
  const CourseContent({
    super.key,
    required this.number,
    required this.title,
    required this.creatorName,
    required this.functionn,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Text(
            "0${number + 1}".toString(),
            style: kHeadingextStyle.copyWith(
              color: kTextColor.withOpacity(.15),
              fontSize: 32,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: TextStyle(
                    color: kTextColor.withOpacity(.5),
                    fontSize: 18,
                  )),
              Text(creatorName,
                  style: TextStyle(
                    color: kTextColor.withOpacity(.5),
                    fontSize: 18,
                  ))
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: functionn,
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                // color: kGreenColor.withOpacity(isDone ? 1:.5),
                color: kGreenColor,
              ),
              child: const Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
