import 'package:flutter/material.dart';
import 'package:path_way_flu/features/auth/domain/usecases/define_fun.dart';

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
              onPressed: () => AuthFuntion().logOut(context),
              child: const Text('LogOut'))),
    );
  }
}
