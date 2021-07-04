import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kohli_internship/quiz/screens/quiz_screen.dart';
import 'package:kohli_internship/zodiac/screens/choose_date.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image(
              width: 200,
              height: 200,
              image: AssetImage(
                'images/zodiac/zodia.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return ChooseDate();
              }));
            },
            hoverColor: Colors.yellow,
            title: Text(
              'Find Your Zodiac',
              style: GoogleFonts.ptSans(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return QuizScreen();
              }));
            },
            hoverColor: Colors.yellow,
            title: Text(
              'Quiz',
              style: GoogleFonts.ptSans(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
