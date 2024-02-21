import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_way_flu/features/auth/data/repositories/api.dart';
import 'package:path_way_flu/features/student/data/repositories/student_api.dart';
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

      
      List<String> list =[];
      for (var element in state.subject) {
      list.add(element);
      }
      if (!list.contains(event.subject)) {
      list.add(event.subject);
        
      }
      var data = {
        "subjects": list
      };

      // ignore: use_build_context_synchronously
      StudentApi.studentSubcriptionAdding(event.id, data, event.context);
    });
  }
}
