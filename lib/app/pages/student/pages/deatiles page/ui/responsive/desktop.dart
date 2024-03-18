import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/core/constants/constants.dart';
import 'package:path_way_flu/app/data/middleware/student.dart';
import 'package:path_way_flu/app/data/middleware/teacher.dart';
import 'package:path_way_flu/app/data/model/lession.dart';
import 'package:path_way_flu/app/data/model/tutoral.dart';
import 'package:path_way_flu/main.dart';

class VideoPlayDesk extends StatefulWidget {
  final Lesson lesson;

  const VideoPlayDesk({super.key, required this.lesson});

  @override
  State<VideoPlayDesk> createState() => _VideoPlayDeskState();
}

class _VideoPlayDeskState extends State<VideoPlayDesk> {
  late CachedVideoPlayerController videoPlayerController;
  late CustomVideoPlayerController _customVideoPlayerController;

  bool isLoading = false;

  String videoUrlDefult =
      "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";

  @override
  void initState() {
    super.initState();
    initilizeVideoPlayer(videoUrlDefult);
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
      context: context,
      videoPlayerController: videoPlayerController,
    );
    setState(() {
      isLoading = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 32, right: 32, top: 32),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: isLoading
                          ? Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey, width: .5)),
                              child: CustomVideoPlayer(
                                  customVideoPlayerController:
                                      _customVideoPlayerController),
                            )
                          : const Center(child: CircularProgressIndicator()),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 32, right: 32),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.all(5),
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.lesson.title,
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  letterSpacing: 1.5,
                                ),
                              ),
                              Text(
                               widget.lesson.creatorName.toUpperCase(

                               ),
                                style: GoogleFonts.quicksand(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  letterSpacing: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 8, left: 32, right: 32),
                        child: SingleChildScrollView(
                          child: SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Description",
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      letterSpacing: 1.5,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 20, top: 50, bottom: 10),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(18)),
                child: FutureBuilder(
                    future: TeacherApi.getTotorial(widget.lesson.id),
                    builder: (context, AsyncSnapshot snapshot) {
                      if (!snapshot.hasData) {
                        return const Center(child: CircularProgressIndicator());
                      } else {
                        List<Tutorial> tutotial = snapshot.data;
                        if (tutotial.isEmpty) {
                          return const Center(child: Text("List is Empty"));
                        } else {
                          return ListView.builder(
                            itemCount: tutotial.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 20, right: 10, left: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      '0${index + 1}',
                                      style: kHeadingextStyle.copyWith(
                                        color: kTextColor.withOpacity(.15),
                                        fontSize: 32,
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(tutotial[index].title,
                                            style: TextStyle(
                                              color: kTextColor.withOpacity(.5),
                                              fontSize: 18,
                                            )),
                                        Text("${tutotial[index].duration} min",
                                            style: TextStyle(
                                              color: kTextColor.withOpacity(.5),
                                              fontSize: 15,
                                            ))
                                      ],
                                    ),
                                    const Spacer(),
                                    GestureDetector(
                                      onTap: () {
                                        int count = index + 1;
                                        StudentApi.getOneProgerssForUpdate(
                                            context: context,
                                            studentId: userId!,
                                            lessonId:
                                                widget.lesson.id,
                                            count: count);
                                        _customVideoPlayerController.dispose();
                                        setState(() {
                                          initilizeVideoPlayer(
                                              tutotial[index].videoUrl);
                                        });
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.only(left: 20),
                                        width: 40,
                                        height: 40,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
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
                            },
                          );
                        }
                      }
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
