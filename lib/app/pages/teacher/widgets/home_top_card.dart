import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';


class BuildHomeBoxTop extends StatelessWidget {
  const BuildHomeBoxTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 150,
        width: double.infinity,
        color: Theme.of(context).colorScheme.secondary,
        child: Row(
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 120, maxWidth: 150),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: const Image(
                  image: AssetImage("asset/images/math image.jpg"),
                ),
              ),
            ),
            const SizedBox(width: 15),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * .45,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Global business Trends and markets",
                    style: GoogleFonts.aBeeZee(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.circle,
                            color: Color.fromARGB(255, 0, 255, 8),
                            size: 10,
                          ),
                          const SizedBox(width: 5),
                          Text("20 ${AppLocalizations.of(context)!.lesson}")
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.circle,
                            color: Colors.yellow,
                            size: 10,
                          ),
                          const SizedBox(width: 5),
                          Text("20${AppLocalizations.of(context)!.min}")
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("1,500"),
                      SizedBox(
                        height: 35,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Theme.of(context).colorScheme.secondary),
                                side: const MaterialStatePropertyAll(
                                    BorderSide(width: 1, color: Colors.green))),
                            child: Text(
                              AppLocalizations.of(context)!.entrollnow,
                              style: GoogleFonts.quicksand(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
