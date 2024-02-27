  import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar buildAppBar({
  required String title,
  required VoidCallback save,
  required VoidCallback cancel,
}){
    return  AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: cancel,
              child: Text('Cancel',
                  style: GoogleFonts.roboto(
                      color: Colors.red[400],
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
            Text(
              title,
              style: GoogleFonts.roboto(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: save,
              child: Text('Save',
                  style: GoogleFonts.roboto(
                      color: Colors.green[400],
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      );
  }