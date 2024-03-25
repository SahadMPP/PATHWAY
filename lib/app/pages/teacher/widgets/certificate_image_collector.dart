import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_way_flu/app/pages/teacher/pages/application%20from/bloc/teacher_application_bloc.dart';


class ImageCertificateCollector extends StatelessWidget {
  const ImageCertificateCollector({
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BlocBuilder<TeacherApplicationBloc, TeacherApplicationState>(
        builder: (context, state) {
          return Row(
            children: [
              GestureDetector(
                onTap: () {
                  context
                      .read<TeacherApplicationBloc>()
                      .add(const TeacherApplicationEvent.certificatePikerOne());
                },
                child: Container(
                    height: 110,
                    width: 130,
                    color: Colors.grey,
                    child: state.cetificateImageOne == null
                        ? const Image(
                            fit: BoxFit.cover,
                            image: AssetImage("asset/images(adding icon).png"))
                        : Image.file(
                            File(state.cetificateImageOne!),
                            fit: BoxFit.cover,
                          )),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  context
                      .read<TeacherApplicationBloc>()
                      .add(const TeacherApplicationEvent.certificatePikerTwo());
                },
                child: Container(
                    height: 110,
                    width: 130,
                    color: Colors.grey,
                    child: state.cetificateImageTwo == null
                        ? const Image(
                            fit: BoxFit.cover,
                            image: AssetImage("asset/images(adding icon).png"))
                        : Image.file(
                            File(state.cetificateImageTwo!),
                            fit: BoxFit.cover,
                          )),
              ),
            ],
          );
        },
      ),
    );
  }
}
