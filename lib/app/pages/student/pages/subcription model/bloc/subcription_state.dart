part of 'subcription_bloc.dart';

@freezed
class SubcriptionState with _$SubcriptionState {
  const factory SubcriptionState({
   required Razorpay razorpay,
   required List<String> subject,
   required String totelAmont,
  }) = _SubcriptionState;

  factory SubcriptionState.initial(){

    return SubcriptionState(razorpay: Razorpay(),subject: [],totelAmont: "00.00");
  }
}
