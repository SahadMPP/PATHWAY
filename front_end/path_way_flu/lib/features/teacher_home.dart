import 'package:flutter/material.dart';
import 'package:path_way_flu/features/auth/domain/usecases/define_fun.dart';

class TeachHome extends StatelessWidget {
  const TeachHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Teacher Home'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () => AuthFuntion().logOut(context),
              child: const Text('LogOut'))),
    );
  }
}
