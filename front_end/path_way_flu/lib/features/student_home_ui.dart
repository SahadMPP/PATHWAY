import 'package:flutter/material.dart';
import 'package:path_way_flu/features/auth/presentation/pages/sign_in_ui.dart';

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
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const SignInScreen()));
              },
              child: const Text('LogOut'))),
    );
  }
}
