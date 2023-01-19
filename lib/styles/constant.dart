import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Get Device with
double deviceWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

/// Get Device Height
double deviceHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

const Color purpleColor = Color(0xff5843BE);
const Color orangeColor = Color(0xffFF9376);
const Color blueColor = Color(0xff62ABF4);
const Color redColor = Color(0xffFF5B5B);
const Color blackColor = Color(0xff000000);
const Color whiteColor = Color(0xffFFFFFF);
const Color greyColor = Color(0xff82868E);
const Color greycardColor = Color(0xffF6F7F8);
const Color greynavColor = Color(0xffF6F7F8);
const Color primaryColor = Color(0xff65AFCD);
const Color secondColor = Color(0xffE8ECF4);

double edge = 24;
double defaultMargin = 24.0;


TextStyle blackTextStyle = GoogleFonts.poppins(
  color: blackColor,
);

TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: whiteColor,
);

TextStyle appbarTextStyle = GoogleFonts.poppins(
  color: whiteColor,
  fontSize: 12,
);

TextStyle greyTextStyle = GoogleFonts.poppins(
  color: greyColor,
);

TextStyle purpleTextStyle = GoogleFonts.poppins(
  color: purpleColor,
);

TextStyle blueTextStyle = GoogleFonts.poppins(
  color: blueColor,
);

TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: primaryColor,
);

TextStyle secondTextStyle = GoogleFonts.poppins(
  color: secondColor,
);

TextStyle redTextStyle = GoogleFonts.poppins(
  color: redColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
