import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

int getTextScale(BuildContext context) {
  return MediaQuery.of(context).textScaleFactor.floor();
}

TextStyle titleText = GoogleFonts.ptSerif(
  color: const Color(0xffffffff),
  fontWeight: FontWeight.bold,
);

TextStyle subHeader = GoogleFonts.ptSerif(
  color: const Color(0xff157378),
  fontSize: 28,
  fontWeight: FontWeight.bold,
);
TextStyle subText = GoogleFonts.ptSerif(
  color: const Color(0xffb93c5d),
  fontSize: 28,
  fontWeight: FontWeight.bold,
);
TextStyle cardText = GoogleFonts.ptSerif(
  fontSize: 19,
  fontWeight: FontWeight.bold,
);

TextStyle paragraph = GoogleFonts.ptSerif();

TextStyle detailText = GoogleFonts.ptSerif(
  color: const Color.fromARGB(255, 0, 0, 0),
  fontSize: 28,
  fontWeight: FontWeight.bold,
);
