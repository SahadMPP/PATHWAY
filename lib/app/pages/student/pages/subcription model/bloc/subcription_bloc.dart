// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_way_flu/app/core/constants/snacbar.dart';
import 'package:path_way_flu/app/data/middleware/auth.dart';
import 'package:path_way_flu/app/data/middleware/student.dart';
import 'package:path_way_flu/app/data/middleware/teacher.dart';
import 'package:path_way_flu/app/data/model/lession.dart';
import 'package:path_way_flu/main.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:http/http.dart' as http;

part 'subcription_event.dart';
part 'subcription_state.dart';
part 'subcription_bloc.freezed.dart';

class SubcriptionBloc extends Bloc<SubcriptionEvent, SubcriptionState> {
  SubcriptionBloc() : super(SubcriptionState.initial()) {
    on<_makingsubcription>((event, emit) {
      var options = {
        'key': 'rzp_test_ZKvZdREQ8HDWXq',
        'amount': event.amount,
        'name': 'Pathway Payment gateway',
        'description': 'purchesing ${event.subject}',
        'prefill': {'contact': event.mob, 'email': event.email}
      };
      try {
        state.razorpay.open(options);
      } catch (e) {
        debugPrint("error : $e");
      }
    });

    on<_makeinginstence>((event, emit) {
      void handlePaymentSuccess(PaymentSuccessResponse response) {
        Fluttertoast.showToast(
            msg: "payment sucessful${response.paymentId!}",
            toastLength: Toast.LENGTH_SHORT);
      }

      void handlePaymentError(PaymentFailureResponse response) {
        Fluttertoast.showToast(
            msg: "payment fail ${response.message!}",
            toastLength: Toast.LENGTH_SHORT);
      }

      void handleExternalWallet(ExternalWalletResponse response) {
        Fluttertoast.showToast(
            msg: "External wallet ${response.walletName!}",
            toastLength: Toast.LENGTH_SHORT);
      }

      state.razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccess);
      state.razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentError);
      state.razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWallet);
    });

    on<_updataStudentdata>((event, emit) async {
      final url = Uri.parse("${AuthApi.baseUrl}get_studentById/${event.id}");

      try {
        final res = await http.get(url);

        if (res.statusCode == 200) {
          var data = jsonDecode(res.body);
          List<String> lessonIdList = List<String>.from(data['lessonId']);
          emit(state.copyWith(subject: lessonIdList));
        } else {
          debugPrint('failed to get response');
        }
      } catch (e) {
        debugPrint(e.toString());
      }
      //----------getting previous data --------------

      List<String> list = [];
      int c = 0;
      for (var element in state.subject) {
        list.add(element);
      }
      if (!list.contains(event.subject)) {
        c = 1;
        list.add(event.subject);
      }
      Map<String, dynamic> data = {"lessonId": list};

      if (c == 0) {
        buildShowSnacbar(
            context: event.context,
            content: "this subject you already purchesed",
            title: "Hi There!",
            contentType: ContentType.help);
      } else {
        var progressData = {
          "creatorName": event.lesson.creatorName,
          "subject": event.lesson.subject,
          "coverImage": event.lesson.coverImage,
          "countOfLessonWatched": 0,
          "totelCountOfLesson": event.lesson.lessonId.length,
          "title": event.lesson.title,
          "lessonId": event.lesson.id,
          "studentId": userId
        };
        StudentApi.studentSubcriptionAdding(
            id: event.id,
            data: data,
            context: event.context,
            progressData: progressData,
            subject: event.lesson.subject,
            lessonPrice: event.lesson.price);
      }

      emit(state.copyWith(subject: []));
    });

    on<_naviagatedToDeatilePage>((event, emit) async {
      List<String> subjectsList = [];
      final url = Uri.parse("${AuthApi.baseUrl}get_studentById/${event.id}");

      try {
        final res = await http.get(url);

        if (res.statusCode == 200) {
          var data = jsonDecode(res.body);
          subjectsList = List<String>.from(data['subjects']);
          emit(state.copyWith(subject: subjectsList));
        } else {
          debugPrint('field to get response');
        }
      } catch (e) {
        debugPrint(e.toString());
      }
      //----------getting previous data --------------

      bool madePayment = false;

      if (subjectsList.contains(event.subject.toLowerCase())) {
        madePayment = true;
      }
      debugPrint(madePayment.toString());

      if (madePayment) {
        // Navigator.of(event.context).push(MaterialPageRoute(
        //     builder: (ctx) => StudentvideoPlay(subject: event.subject)));
      } else {
        // Navigator.of(event.context).push(MaterialPageRoute(
        //     builder: (ctx) =>
        //         StudentDeatileWithoutPay(subject: event.subject)));
      }
      emit(state.copyWith(subject: []));
    });

    on<_gettingTotelAmount>((event, emit)async {
      num totelPrice = 0;
    List<Lesson> lessons = await TeacherApi.getAllLession();
    for (var element in lessons) {
     totelPrice = totelPrice + element.price; 
    }
      emit(state.copyWith(totelAmont:totelPrice.toString() ));
    });
  }
}
   