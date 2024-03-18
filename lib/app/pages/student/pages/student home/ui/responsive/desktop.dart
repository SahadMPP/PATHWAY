import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:path_way_flu/app/core/constants/constants.dart';
import 'package:path_way_flu/app/core/constants/subject_list.dart';
import 'package:path_way_flu/app/pages/student/pages/student%20home/bloc/student_home_bloc.dart';
import 'package:path_way_flu/app/pages/teacher/widgets/home_card_desk.dart';

class StudentHomeDesk extends StatelessWidget {
  const StudentHomeDesk({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const HomeTopImage(),
          Container(
              padding: const EdgeInsets.all(20),
              height: 500,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          image: const DecorationImage(
                              image: AssetImage(
                                  "asset/images/pexels-max-fischer-5212317.jpg"),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40, right: 70),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 164, 241, 255),
                                  borderRadius: BorderRadius.circular(5)),
                              height: 30,
                              width: 70,
                              child: Center(
                                  child: Text(
                                'Teacher',
                                style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'courses taught by industry leaders around the world',
                              style: GoogleFonts.kaiseiDecol(
                                fontWeight: FontWeight.bold,
                                fontSize: 32,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                                'courses taught by industry leaders around the world provide studentd with a unique learning oppertuniny',
                                style: GoogleFonts.aBeeZee(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))
                          ]),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 70,
            width: double.infinity,
            child: SizedBox(
              height: 45,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(maxHeight: 20, maxWidth: 170),
                      child: BlocBuilder<StudentHomeBloc, StudentHomeState>(
                        builder: (context, state) {
                          return ElevatedButton(
                              style: ButtonStyle(
                                  side: MaterialStatePropertyAll(BorderSide(
                                      color: state.selectedTopic == index
                                          ? Colors.blue[400]!
                                          : Colors.transparent,
                                      width: 2)),
                                  backgroundColor: MaterialStatePropertyAll(
                                    Theme.of(context).colorScheme.primary,
                                  )),
                              onPressed: () {
                                context.read<StudentHomeBloc>().add(
                                    StudentHomeEvent.swichingSubjectList(
                                        index: index));
                              },
                              child: Text(
                                subjectList[index]['name']!,
                                style: GoogleFonts.aBeeZee(color: Colors.grey),
                              ));
                        },
                      )),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10,left: 20),
            child: SizedBox(
              height: 600,
              width: double.infinity,
              child: HomeMainBox(),
            ),
          )
        ]),
      ),
    );
  }
}



class HomeMainBox extends StatelessWidget {
  const HomeMainBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BlocBuilder<StudentHomeBloc, StudentHomeState>(
                  builder: (context, state) {
                    return Text(state.currentSubject, style: kTitleTextStyle);
                  },
                ),
                TextButton(onPressed: (){
                  context.read<StudentHomeBloc>().add(StudentHomeEvent.navigatingSeeAll(context: context));
                }, child:  Text('SeeAll',style: GoogleFonts.aBeeZee(
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),))
              ],
            ),
            const SizedBox(height: 20),
            BlocBuilder<StudentHomeBloc, StudentHomeState>(
              builder: (context, state) {
                return BuildHomeBoxDesk(
                  currentsub: state.currentSubject,
                  isSelected: state.selectedTopic,
                );
              },
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

class HomeTopImage extends StatelessWidget {
  const HomeTopImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 400,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "Online ",
                              style: GoogleFonts.quicksand(
                                  color: Colors.red[500],
                                  fontSize: 32,
                                  letterSpacing: 2,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: "Education",
                              style: GoogleFonts.aBeeZee(
                                  color: Colors.black,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold))
                        ])),
                        Text("Feel Link Real",
                            style: GoogleFonts.aBeeZee(
                                color: Colors.black,
                                fontSize: 38,
                                fontWeight: FontWeight.bold)),
                        Text("classroom",
                            style: GoogleFonts.aBeeZee(
                                color: Colors.black,
                                fontSize: 38,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text("Amezing teacher teaching your subjects",
                        style: GoogleFonts.aBeeZee(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 100,
                      width: 200,
                      child: Lottie.asset(
                          'asset/animation_icon/Animation - 1710676141941.json',
                          fit: BoxFit.cover),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
                height: 400,
                width: double.infinity,
                child: Lottie.asset(
                    'asset/animation_icon/Animation - 1710672370078.json')),
          ),
        ],
      ),
    );
  }
}
