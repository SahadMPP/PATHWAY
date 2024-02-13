import 'package:flutter/material.dart';
import 'package:path_way_flu/features/admin/data/models/tutoral_model.dart';
import 'package:path_way_flu/features/admin/data/repositories/admin_api.dart';
import 'package:path_way_flu/features/admin/presentation/pages/adding_tutorial_form.dart';
import 'package:path_way_flu/features/admin/presentation/widgets/tutorial_card.dart';
import 'package:path_way_flu/features/student/presentation/widgets/hedline_back.dart';

class ListOfTutorial extends StatelessWidget {
  final String category;
  const ListOfTutorial({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: FloatingActionButton(
            onPressed: () {
              // Navigator.of(context).push(
              //     MaterialPageRoute(builder: (ctx) => const AddTotorialForm()));
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => const AddTotorialForm()));
            },
            backgroundColor: Theme.of(context).colorScheme.onSecondary,
            child: const Icon(
              Icons.add,
              size: 30,
              color: Colors.white,
            )),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
          child: Column(
            children: [
              BuildHeadlinewithBack(
                  fun: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icons.arrow_back,
                  headline: category),
              const SizedBox(height: 10),
              RefreshIndicator(
                onRefresh: () => AdminApi.getTotorial(category),
                child: FutureBuilder(
                    future: AdminApi.getTotorial(category),
                    builder: (context, AsyncSnapshot snapshot) {
                      if (!snapshot.hasData) {
                        return const Center(
                            child: CircularProgressIndicator(
                          color: Colors.grey,
                        ));
                      } else {
                        List<Tutorial> tutorial = snapshot.data;
                        if (tutorial.isEmpty) {
                          return Center(
                            child: Container(
                              height: MediaQuery.of(context).size.height * .6,
                              width: MediaQuery.of(context).size.width * .9,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          "asset/default image/Screenshot 2024-02-12 122805.png"))),
                            ),
                          );
                        } else {
                          return TutoralCard(tutorial: tutorial);
                        }
                      }
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
