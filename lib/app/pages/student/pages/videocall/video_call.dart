import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';


class CallPage extends StatelessWidget {
  const CallPage({Key? key, required this.callID}) : super(key: key);
  final String callID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: 373068434, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: "ae139482d17885a225b34476db2c8d35b81b5bd56e30a3d62a4ac2943e62011b", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: "userId",
      userName: "userName",
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
