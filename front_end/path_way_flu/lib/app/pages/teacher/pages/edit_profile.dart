import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Cancel', style: GoogleFonts.roboto(color: Colors.red[400],fontSize: 16,fontWeight: FontWeight.bold)),
            Text(
              'Edit Profile',
              style: GoogleFonts.roboto(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Done',
              style: GoogleFonts.roboto(color: Colors.green,fontSize: 16,fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 10),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Center(
                child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("asset/profiles/chat777.png"),
            )),
            const SizedBox(height: 10),
            Text("Change Profile Photo",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.green,
                )),
            const SizedBox(height: 15),
            Divider(
              color: Colors.grey[200],
            ),
            const SizedBox(height: 20),
            const BuildEditTexfielCard(
              hintText: "Name",
              title: "Name",
            ),
            const BuildEditTexfielCard(
              hintText: "@user",
              title: "UserName",
            ),
            const BuildEditTexfielCard(
              hintText: "Email",
              title: "email",
            ),
            const BuildEditTexfielCard(
              hintText: "Password",
              title: "Password",
            ),
            const BuildEditTexfielCard(
              hintText: "Phone",
              title: "Phone",
            ),
            const BuildEditTexfielCard(
              hintText: "Male",
              title: "Gender",
            ),
          ],
        ),
      ),
    );
  }
}

class BuildEditTexfielCard extends StatelessWidget {
  final String title;
  final String hintText;
  const BuildEditTexfielCard({
    super.key,
    required this.title,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: 250,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: hintText,
                enabled: false,
              ),
            ),
          )
        ],
      ),
    );
  }
}
