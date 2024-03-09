import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Privecy extends StatelessWidget {
  const Privecy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Privecy Concern",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              const SizedBox(height: 40),
              Text(
                "At PATHWAY, we take your privacy and data security seriously. We are committed to safeguarding your personal information and ensuring that your data remains confidential and protected at all times.\nWe adhere to strict privacy policies and industry-standard security measures to prevent unauthorized access, disclosure, alteration, or destruction of your data. Your personal information, including localization preferences, communication data from video calls, and any other sensitive information, is encrypted and stored securely on our servers.\nWe do not share your personal data with third parties without your explicit consent, except when required by law or to comply with legal obligations.\n Additionally, we provide you with full control over your data, allowing you to manage your privacy settings and preferences within the app.Transparency is key to building trust, and we are committed to keeping you informed about how your data is collected, used, and protected. If you have any questions or concerns about your privacy or data security, please don't hesitate to contact us. Your privacy is our priority.",
                textAlign: TextAlign.justify,
                style: GoogleFonts.quicksand(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
