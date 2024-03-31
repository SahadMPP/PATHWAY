part of 'forgot_bloc.dart';

@freezed
class ForgotEvent with _$ForgotEvent {
  const factory ForgotEvent.callForEmailEvent({
    required BuildContext context,
    required TextEditingController email,
    required TextEditingController? name,
    required TextEditingController? password,
    required String textToCheck,
    required String directiontext,
  }) = _callForEmailEvent;
}
