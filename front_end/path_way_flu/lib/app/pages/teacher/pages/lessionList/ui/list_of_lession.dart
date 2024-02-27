import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListOfLession extends StatelessWidget {
  const ListOfLession({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).colorScheme.onSecondary,
        child: Icon(Icons.add,
            color: Theme.of(context).colorScheme.background, size: 30),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Lessions",
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            letterSpacing: 2,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(15),
              height: 150,
              width: double.infinity,
              child: Row(
                children: [
                  SizedBox(
                    height: 110,
                    width: 110,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset(
                          'asset/images.jpg',
                          fit: BoxFit.cover,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Discover English Basics",
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            height: 2,
                          ),
                        ),
                        Text(
                          "Lession 21",
                          style: GoogleFonts.quicksand(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                            height: 30,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Theme.of(context).colorScheme.onSurface)),
                              child: const Text('Keep Processing'),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
