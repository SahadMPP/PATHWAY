import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SeeAllCategory extends StatelessWidget {
  const SeeAllCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        toolbarHeight: 70,
        title: TextFormField(
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
                child: SizedBox(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      mainAxisExtent: 200,
                    ),
                    itemCount: 10,
                    itemBuilder: (context, index) => ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        color: 
                        Theme.of(context).colorScheme.secondary,
                        child: Column(
                          children: [
                            SizedBox(
                                height: 90,
                                width: double.infinity,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    'asset/images/history.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                )),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ConstrainedBox(
                                  constraints:
                                      const BoxConstraints(maxWidth: 120),
                                  child: Text(
                                    "utoral[index]\n.title",
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
                              children: [
                                const CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage("asset/profiles/chat555.png"),
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  "Jhon Smith",
                                  style: GoogleFonts.quicksand(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Text(
                                  "1.55 hours",
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
                                      "12 ${AppLocalizations.of(context)!.lesson}",
                                      style: GoogleFonts.aBeeZee(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          wordSpacing: 3),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
