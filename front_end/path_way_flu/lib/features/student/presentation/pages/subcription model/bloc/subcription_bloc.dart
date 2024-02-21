// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_way_flu/core/constants/snacbar.dart';
import 'package:path_way_flu/features/auth/data/repositories/api.dart';
import 'package:path_way_flu/features/student/data/repositories/student_api.dart';
import 'package:path_way_flu/features/student/presentation/pages/deatiles_page.dart';
import 'package:path_way_flu/features/student/presentation/pages/deatiles_page_with_outpay.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:http/http.dart' as http;

part 'subcription_event.dart';
part 'subcription_state.dart';
part 'subcription_bloc.freezed.dart';

class SubcriptionBloc extends Bloc<SubcriptionEvent, SubcriptionState> {
  SubcriptionBloc() : super(SubcriptionState.Initial()) {
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
          List<String> subjectsList = List<String>.from(data['subjects']);
          emit(state.copyWith(subject: subjectsList));
        } else {
          debugPrint('field to get response');
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
      var data = {"subjects": list};

      if (c == 0) {
        buildShowSnacbar(
            context: event.context,
            content: "this subject you alredy purchesed",
            title: "Hi There!",
            contentType: ContentType.help);
      } else {
        StudentApi.studentSubcriptionAdding(event.id, data, event.context);
      }

      emit(state.copyWith(subject: []));
    });

    on<_naviagatedToDeatilePage>((event, emit) async {

      List<String> subjectsList =[];
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
        Navigator.of(event.context).push(MaterialPageRoute(
            builder: (ctx) => StudentvideoPlay(subject: event.subject)));
      } else {
        Navigator.of(event.context).push(MaterialPageRoute(
            builder: (ctx) =>
                StudentDeatileWithoutPay(subject: event.subject)));
      }
      emit(state.copyWith(subject: []));
    });
  }
}
