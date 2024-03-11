import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/core/constants/constants.dart';
import 'package:path_way_flu/app/pages/teacher/pages/application%20from/ui/application_form.dart';

class ShowWaring extends StatelessWidget {
  const ShowWaring({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body:  Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('asset/icons/images-removebg-preview.png',height: 250,fit: BoxFit.cover,filterQuality: FilterQuality.high,),
            const SizedBox(height: 70),
            Text("Warning",style: kHeadingextStyle.copyWith(color: Colors.lightBlue),),
            const SizedBox(height: 20),
             Text("Before creating your own tutorials, you need to get permission from the head. Just submit a request and wait a maximum of 3 days to receive a response.",textAlign: TextAlign.center,style: GoogleFonts.roboto(color: Theme.of(context).colorScheme.onSecondary)),
             TextButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const TeacherApplicationFormSc()));
             }, child: const Text('Fill your form',style: TextStyle(
              color: Colors.blue, 
               decoration: TextDecoration.underline,

             ),))
          ],
        
        ),
      ),
    );
  }
}