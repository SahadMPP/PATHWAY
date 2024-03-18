import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/data/middleware/auth.dart';
import 'package:path_way_flu/app/pages/student/pages/student%20home/bloc/student_home_bloc.dart';
import 'package:path_way_flu/main.dart';

class StudentHeader extends StatelessWidget {
  const StudentHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
        var homeTextStyle = GoogleFonts.aBeeZee(
      fontSize: 14,
      color: Colors.grey,
    );
    List<String> title = ["Home", "Inbox", "Chat", "Status", "Settings"];
    return SizedBox(
      height: 80,
      width: double.infinity,
      child: Row(children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(
                    maxHeight: 45,
                    maxWidth: 45,
                    minHeight: 30,
                    minWidth: 30),
                child: Image.asset(
                    'asset/app_lounger_icon/brainstorming.png'),
              ),
              const SizedBox(width: 10),
              Text(
                "PATHWAY",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
        Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 360,
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: title.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        context.read<StudentHomeBloc>().add(
                            StudentHomeEvent.selectingDeskSection(
                                index: index));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: BlocBuilder<StudentHomeBloc,
                            StudentHomeState>(
                          builder: (context, state) {
                            return Text(
                              title[index],
                              style: homeTextStyle.copyWith(
                                  color: state.selectedIndex == index
                                      ? Colors.black
                                      : Colors.grey,
                                  fontWeight: state.selectedIndex == index
                                      ? FontWeight.bold
                                      : FontWeight.w500),
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
            )),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                userName ?? "User".toUpperCase(),
                style: GoogleFonts.aBeeZee(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 20),
              userProfile == null
                  ?ClipRRect(
                      borderRadius: BorderRadiusDirectional.circular(70),
                      child: SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            'asset/profiles/image33.png',
                            fit: BoxFit.fill,
                          ))): ClipRRect(
                      borderRadius: BorderRadiusDirectional.circular(70),
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.network(
                          '${AuthApi.baseUrlImage}$userProfile',
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  
            ],
          ),
        ),
      ]),
    );
  }
}