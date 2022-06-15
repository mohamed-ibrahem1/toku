import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:toku/components/components.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/familymember_page.dart';
import 'package:toku/screens/phrases_page.dart';

import 'numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('191919'),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: HexColor('191919'),
        elevation: 0.0,
        title: Text(
          'TOKU',
          style: GoogleFonts.titanOne(
            color: Colors.white,
            fontSize: 50,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10,),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const NumbersPage();
                  },
                ),
              );
            },
            text: 'Numbers',
            color: HexColor('2D4263'),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const FamilyMembersPage();
                  },
                ),
              );
            },
            text: 'Family',
            color: HexColor('2D4263'),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const ColorsPage();
                  },
                ),
              );
            },
            text: 'Colors',
            color: HexColor('2D4263'),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const PhrasesPage();
                  },
                ),
              );
            },
            text: 'Phrases',
            color: HexColor('2D4263'),
          ),
        ],
      ),
    );
  }
}
