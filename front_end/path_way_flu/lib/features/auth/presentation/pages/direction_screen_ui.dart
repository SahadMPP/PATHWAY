import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:path_way_flu/features/auth/presentation/pages/sign_in_ui.dart';
import 'package:path_way_flu/features/auth/presentation/widgets/button_buil.dart';

class DirectionScreen extends StatelessWidget {
  const DirectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () => context
                    .read<AuthBloc>()
                    .add(const AuthEvent.directionSelection()),
                child: BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    return Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: state.directionValue
                              ? const Color.fromARGB(255, 138, 203, 255)
                              : Colors.white,
                          width: 3,
                        ),
                      ),
                      child: const CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage("asset/student(Icon).png"),
                        backgroundColor: Colors.yellow,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Student",
                style: GoogleFonts.roboto(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () => context
                    .read<AuthBloc>()
                    .add(const AuthEvent.directionSelection()),
                child: BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    return Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: state.directionValue
                              ? Colors.white
                              : const Color.fromARGB(255, 138, 203, 255),
                          width: 3,
                        ),
                      ),
                      child: const CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage("asset/teacher(Image).png"),
                        backgroundColor: Colors.yellow,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Teacher",
                style: GoogleFonts.roboto(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Center(
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return BuildButton(
                    text: "Continue as a ${state.directionText}",
                    fun: () {
                      // createUser();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const SignInScreen()));
                    });
              },
            ),
          )
        ],
      ),
    );
  }

//   Future<void> createUser() async {
//   const String url = 'http://learnpro.today:5000/api/update_teacher/65ce11b9ff9e8e327ac47301'; // Replace with your actual API URL

//   // Sample user data
//   var userData = {
//     "name": "Jooooo",
//     "email": "john.doe@exam",
//     "password": "password123",
//     "mobNumber": "1234567890",
//     "universityName": "Example University",
//     "universityPlace": "Example City",
//     "universityState": "Example State",
//     "experience": "Some experience",
//     "officerName": "Officer Name",
//     "certificates": {"certificate1": "url1", "certificate2": "url2"},
//     "signatureImage": "signature-url",
//     "active": true,
//     "subjects": {"subject1": true, "subject2": false}
// };

//   try {
//     final response = await http.put(
//       Uri.parse(url),
//        headers: <String, String>{
//         'Content-Type': 'application/json',
//       },
//       body: jsonEncode(userData),
//     );

//     if (response.statusCode == 200) {
//       debugPrint('User update successfully');
//     } else {
//       debugPrint('Failed to create user: ${response.statusCode}');
//       debugPrint(response.body);
//     }
//   } catch (e) {
//     debugPrint('Error creating user: $e');
//   }
// }
}
