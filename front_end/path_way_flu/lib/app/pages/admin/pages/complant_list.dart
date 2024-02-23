import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_way_flu/app/data/model/complaint.dart';
import 'package:path_way_flu/app/data/middleware/admin.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:path_way_flu/app/pages/admin/bloc/admin_bloc.dart';

class ComplantList extends StatelessWidget {
  const ComplantList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            AppLocalizations.of(context)!.complaint.toUpperCase(),
            style: GoogleFonts.quicksand(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 30),
          child: FutureBuilder(
              future: AdminApi.getComplaits(),
              builder: (context, AsyncSnapshot snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  List<Complaint> complaint = snapshot.data;
                  if (complaint.isEmpty) {
                    return Center(
                      child: Container(
                        height: MediaQuery.of(context).size.height * .7,
                        width: MediaQuery.of(context).size.width * .9,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    "asset/default image/Screenshot 2024-02-12 122805.png"))),
                      ),
                    );
                  } else {
                    return ListView.builder(
                        itemCount: complaint.length,
                        itemBuilder: (context, index) {
                          GlobalKey<FormState> key = GlobalKey();
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Dismissible(
                                key: key,
                                direction: DismissDirection.endToStart,
                                onDismissed: (value) {
                                  context.read<AdminBloc>().add(
                                      AdminEvent.deleteComplaint(
                                          id: complaint[index].id!,
                                          context: context));
                                },
                                background: Container(
                                  height: 110,
                                  width: double.infinity,
                                  color: Colors.red[200],
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.delete,
                                              color: Colors.white)),
                                    ),
                                  ),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.all(20),
                                  height: 110,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(8))),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        Icons.arrow_back_ios_new,
                                        // color: Colors.grey,
                                        size: 20,
                                      ),
                                      const SizedBox(width: 15),
                                      ConstrainedBox(
                                        constraints: const BoxConstraints(
                                          maxHeight: 200,
                                          maxWidth: 230,
                                        ),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                complaint[index].title,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  // color: Color.fromARGB(
                                                  //     255, 62, 62, 62),
                                                ),
                                              ),
                                              const SizedBox(height: 10),
                                              Text(
                                                complaint[index].description,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSecondary,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        });
                  }
                }
              }),
        ));
  }
}
