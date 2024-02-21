part of 'subcription_bloc.dart';

@freezed
class SubcriptionState with _$SubcriptionState {
  const factory SubcriptionState({
   required Razorpay razorpay,
  }) = _SubcriptionState;

  factory SubcriptionState.Initial(){
    return SubcriptionState(razorpay: Razorpay());
  }
}
