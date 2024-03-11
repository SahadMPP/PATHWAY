    import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar appbarAppicationForm(context){
      return AppBar(
        centerTitle: true,
        title: Text(
          "Fill Up",
          style: GoogleFonts.quicksand(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Container(
          alignment: Alignment.center,
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            border: Border.all(
                color: Theme.of(context).colorScheme.secondary, width: 3),
            boxShadow: const [
              BoxShadow(blurRadius: .5),
            ],
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.circular(8),
          ),
          child: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.arrow_back,
                size: 20,
              )),
        ),
      );
    }