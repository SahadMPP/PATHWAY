import 'package:flutter/material.dart';
import 'package:path_way_flu/app/data/model/lession.dart';

import 'package:path_way_flu/app/pages/auth/presentation/pages/direction/ui/responsive/responsive_layout.dart';
import 'package:path_way_flu/app/pages/student/pages/deatiles%20page/ui/responsive/desktop.dart';
import 'package:path_way_flu/app/pages/student/pages/deatiles%20page/ui/responsive/mobile.dart';
import 'package:path_way_flu/app/pages/student/pages/deatiles%20page/ui/responsive/taplet.dart';


class VideoPlay extends StatefulWidget {
  final Lesson lesson;
  const VideoPlay({super.key, required this.lesson});

  @override
  State<VideoPlay> createState() => _VideoPlayState();
}

class _VideoPlayState extends State<VideoPlay> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ResponsiveLayOut(
          mobileScaffold: VideoPlayMob(lesson:widget.lesson),
          tabletScaffold: VideoPlayTab(lesson: widget.lesson),
          desktopScaffold: VideoPlayDesk(lesson:widget.lesson)),
    );
  }
}
