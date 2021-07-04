import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kohli_internship/widgets/custom_drawer.dart';
import 'package:kohli_internship/quiz/modal/quiz.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (i<6){
            setState(() {
              i = i + 1;
            });
          }
          else

        },
      ),
      drawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Test your Zodiac knowledge',
          style: GoogleFonts.dancingScript(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check_outlined,
                color: Colors.green,
              ),
              Icon(
                Icons.circle,
                color: Colors.blue,
              ),
              Icon(
                Icons.check_outlined,
                color: Colors.green,
              ),
              Icon(
                Icons.close,
                color: Colors.red,
              ),
              Icon(
                Icons.check_outlined,
                color: Colors.green,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '${QuizQuestions().quizQuestions[i].question}',
            style: TextStyle(),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '${QuizQuestions().quizQuestions[i].option1}',
            style: TextStyle(),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '${QuizQuestions().quizQuestions[i].option2}',
            style: TextStyle(),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '${QuizQuestions().quizQuestions[i].option3}',
            style: TextStyle(),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '${QuizQuestions().quizQuestions[i].option4}',
            style: TextStyle(),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
