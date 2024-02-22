import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ToBeDone extends StatefulWidget {
  const ToBeDone({super.key});

  @override
  State<ToBeDone> createState() => _ToBeDoneState();
}

class _ToBeDoneState extends State<ToBeDone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("To be updated soon !! Stay Tuned",
      style: GoogleFonts.jacquesFrancois(fontWeight: FontWeight.w400,fontSize: 20,letterSpacing: 3),
      )),
    );
  }
}
