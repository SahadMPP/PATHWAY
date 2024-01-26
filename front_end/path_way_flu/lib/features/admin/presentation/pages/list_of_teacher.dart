import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:path_way_flu/core/constants/constants.dart';

class ListOfTeachers extends StatelessWidget {
  const ListOfTeachers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: Text(
            'List of Teachers',
            style: kTitleTextStyle.copyWith(
                fontSize: 25, fontWeight: FontWeight.w400),
          ),
          leading: CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 235, 235, 235),
            child: SvgPicture.asset("asset/icons/arrow-left.svg"),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Sabeela Sayma',
                      style: kSubheadingextStyle.copyWith(color: Colors.black)),
                  subtitle: Text('Che,Mal,Eng',
                      style: kSubtitleTextSyule.copyWith(
                          color: Colors.grey, fontSize: 15)),
                  leading: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("asset/images/user.png"),
                  ),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person_add_disabled,
                        color: Colors.grey,
                        size: 30,
                      )),
                );
              }),
        ));
  }
}
