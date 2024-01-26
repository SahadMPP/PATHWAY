import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/core/constants/constants.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundColor: const Color.fromARGB(255, 245, 245, 245),
          child: SvgPicture.asset("asset/icons/arrow-left.svg"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(height: 50),
                Text(
                  'OTP Verification',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                  ),
                ),
                const SizedBox(height: 15),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 400,
                    minWidth: 200,
                  ),
                  child: Text(
                    'Please check your emali www.sahad@gmail.com to see the verification code',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.aBeeZee(
                      color: const Color.fromARGB(255, 134, 134, 134),
                      fontWeight: FontWeight.w300,
                      fontSize: 17,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "OTP Code",
                  style: kTitleTextStyle.copyWith(fontSize: 22),
                ),
                const SizedBox(height: 30),
                Form(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromARGB(255, 237, 237, 237),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15))),
                        style: Theme.of(context).textTheme.titleLarge,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromARGB(255, 237, 237, 237),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15))),
                        style: Theme.of(context).textTheme.titleLarge,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromARGB(255, 237, 237, 237),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15))),
                        style: Theme.of(context).textTheme.titleLarge,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromARGB(255, 237, 237, 237),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15))),
                        style: Theme.of(context).textTheme.titleLarge,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                  ],
                )),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Resent code to  ',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.aBeeZee(
                          color: const Color.fromARGB(255, 134, 134, 134),
                          fontWeight: FontWeight.w300,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        '01:26',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.aBeeZee(
                          color: kBlueColor,
                          fontWeight: FontWeight.w300,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 4),
                        blurRadius: 50,
                        color: kTextColor.withOpacity(.1),
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BuildButtonOtp(
                        borderColor: const Color.fromARGB(255, 224, 224, 224),
                        backgroColor: Colors.white,
                        textColor: Colors.blue,
                        text: "Resend code",
                        fun: () {}),
                    BuildButtonOtp(
                      borderColor: kBlueColor,
                      backgroColor: kBlueColor,
                      textColor: Colors.white,
                      text: "Verify",
                      fun: () {},
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BuildButtonOtp extends StatelessWidget {
  final String text;
  final VoidCallback fun;
  final Color textColor;
  final Color backgroColor;
  final Color borderColor;

  const BuildButtonOtp({
    super.key,
    required this.text,
    required this.fun,
    required this.textColor,
    required this.backgroColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 180,
      child: ElevatedButton(
          style: ButtonStyle(
              side: MaterialStatePropertyAll(
                  BorderSide(color: borderColor, width: 2)),
              backgroundColor: MaterialStatePropertyAll(backgroColor),
              shape: const MaterialStatePropertyAll(BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))))),
          onPressed: fun,
          child: Text(
            text,
            style: GoogleFonts.roboto(
              fontSize: 17,
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
