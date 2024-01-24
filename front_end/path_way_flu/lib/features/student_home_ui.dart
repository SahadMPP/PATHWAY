import 'package:flutter/material.dart';
import 'package:path_way_flu/features/auth/presentation/pages/sign_in_ui.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StuHome extends StatelessWidget {
  const StuHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Student Home'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () async {
                final sharepre = await SharedPreferences.getInstance();
                sharepre.clear();
                // ignore: use_build_context_synchronously
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (ctx) => const SignInScreen()),
                    (route) => false);
              },
              child: const Text('LogOut'))),
    );
  }
}
