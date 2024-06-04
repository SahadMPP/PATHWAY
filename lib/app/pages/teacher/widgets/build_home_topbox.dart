import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class BuildHomeTopBox extends StatelessWidget {
  const BuildHomeTopBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    maxHeight: double.infinity,
                    maxWidth:
                        MediaQuery.of(context).size.width * .40),
                child: const Image(
                  image: AssetImage("asset/images/math image.jpg"),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 50,
                  maxWidth: MediaQuery.of(context).size.width * .50,
                ),
                child: Text(
                  "Global business top ten",
                  style: GoogleFonts.aBeeZee(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.circle,
                    color: Color.fromARGB(255, 0, 255, 8),
                    size: 10,
                  ),
                  const SizedBox(width: 5),
                  Text("20 ${AppLocalizations.of(context).lesson}")
                ],
              ),
              Row(
                children: [
                  const Text(
                    "\$1500",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  ConstrainedBox(
                    constraints:
                        const BoxConstraints(maxHeight: 30, maxWidth: 100),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Theme.of(context)
                                    .colorScheme
                                    .secondary),
                            side: const MaterialStatePropertyAll(
                                BorderSide(
                                    width: 1, color: Colors.green))),
                        child: Text(
                          AppLocalizations.of(context).entrollnow,
                          style: const TextStyle(
                             color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        )),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
