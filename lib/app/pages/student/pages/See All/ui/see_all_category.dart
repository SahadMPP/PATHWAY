import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:path_way_flu/app/pages/student/pages/See%20All/bloc/see_all_bloc.dart';

class SeeAllCategory extends StatelessWidget {
  const SeeAllCategory({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<SeeAllBloc>().add(const SeeAllEvent.givingInitialValue());
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        toolbarHeight: 70,
        title: TextFormField(
          onChanged: (value) {
            context
                .read<SeeAllBloc>()
                .add(SeeAllEvent.fulturedValue(typeText: value));
          },
          decoration: InputDecoration(
              border: const UnderlineInputBorder(borderSide: BorderSide.none),
              hintText: 'Search',
              hintStyle: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: 22,
              )),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Basic Calculas',
                    style: GoogleFonts.quicksand(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    AppLocalizations.of(context)!.lesson,
                    style: GoogleFonts.quicksand(
                      fontSize: 18,
                      color: Theme.of(context).colorScheme.onSecondary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: BlocBuilder<SeeAllBloc, SeeAllState>(
                  builder: (context, state) {
                    return SizedBox(
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 15,
                            mainAxisExtent: 200,
                          ),
                          itemCount: state.list.length,
                          itemBuilder: (context, index) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: GestureDetector(
                                onTap: () {
                                  context.read<SeeAllBloc>().add(
                                      SeeAllEvent.navigatingMaker(
                                          lesson: state.list[index],
                                          context: context));
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(
                                              height: 100,
                                              width: double.infinity,
                                              child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  child: Image.network(
                                                    "http://learnpro.today:5000/${state.list[index].coverImage}",
                                                    fit: BoxFit.cover,
                                                  ))),
                                          const SizedBox(height: 5),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              ConstrainedBox(
                                                constraints:
                                                    const BoxConstraints(
                                                        maxWidth: 120,
                                                        maxHeight: 35),
                                                child: Text(
                                                  state.list[index].title,
                                                  style: GoogleFonts.aBeeZee(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ),
                                              const Spacer(),
                                              const Image(
                                                image: AssetImage(
                                                    "asset/icons/icons8-best-seller-94.png"),
                                                height: 25,
                                              )
                                            ],
                                          ),
                                          const SizedBox(height: 5),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  const CircleAvatar(
                                                    radius: 10,
                                                    backgroundImage: AssetImage(
                                                        "asset/profiles/chat555.png"),
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    state.list[index]
                                                        .creatorName,
                                                    style:
                                                        GoogleFonts.quicksand(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                '\u{20B9}${state.list[index].price}',
                                                style: GoogleFonts.aBeeZee(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15,
                                                    color: Colors.red),
                                              ),
                                            ],
                                          ),
                                          const Spacer(),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "${state.list[index].watchTime} min",
                                                style: GoogleFonts.aBeeZee(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12,
                                                    wordSpacing: 3),
                                              ),
                                              Row(
                                                children: [
                                                  const Icon(
                                                    Icons.circle,
                                                    color: Colors.grey,
                                                    size: 10,
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    "${state.list[index].lessonId.length} ${AppLocalizations.of(context)!.lesson}",
                                                    style: GoogleFonts.aBeeZee(
                                                        color: Colors.grey,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12,
                                                        wordSpacing: 3),
                                                  )
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: BlocBuilder<SeeAllBloc,
                                              SeeAllState>(
                                            builder: (context, state) {
                                              return Visibility(
                                                  visible: state.list[index]
                                                      .lessonId.isEmpty,
                                                  child: Image.asset(
                                                    "asset/icons/coming-soon.png",
                                                    height: 45,
                                                  ));
                                            },
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
