import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kohli_internship/quiz/screens/quiz_reaults.dart';
import 'package:kohli_internship/widgets/custom_drawer.dart';
import 'package:kohli_internship/quiz/modal/quiz.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  // Icon(
  // Icons.check_outlined,
  // color: Colors.green,
  // ),
  // Icon(
  // Icons.close,
  // color: Colors.red,
  // ),
  int total = 0;
  List<int> scores = [0, 0, 0, 0, 0];
  List<Icon> trackingScore = [
    Icon(
      Icons.circle,
      color: Colors.blue,
    ),
    Icon(
      Icons.circle,
      color: Colors.blue,
    ),
    Icon(
      Icons.circle,
      color: Colors.blue,
    ),
    Icon(
      Icons.circle,
      color: Colors.blue,
    ),
    Icon(
      Icons.circle,
      color: Colors.blue,
    ),
  ];
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: i < 5
          ? Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: trackingScore,
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
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (QuizQuestions().quizQuestions[i].option1 ==
                          QuizQuestions().quizQuestions[i].answer) {
                        trackingScore[i] = Icon(
                          Icons.check_outlined,
                          color: Colors.green,
                        );
                        scores[i] = 1;
                        i = i + 1;
                      } else {
                        trackingScore[i] = Icon(
                          Icons.close,
                          color: Colors.red,
                        );
                        i = i + 1;
                      }
                    });
                  },
                  child: Text(
                    '${QuizQuestions().quizQuestions[i].option1}',
                    style: TextStyle(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (QuizQuestions().quizQuestions[i].option2 ==
                          QuizQuestions().quizQuestions[i].answer) {
                        trackingScore[i] = Icon(
                          Icons.check_outlined,
                          color: Colors.green,
                        );
                        scores[i] = 1;
                        i = i + 1;
                      } else {
                        trackingScore[i] = Icon(
                          Icons.close,
                          color: Colors.red,
                        );
                        i = i + 1;
                      }
                    });
                  },
                  child: Text(
                    '${QuizQuestions().quizQuestions[i].option2}',
                    style: TextStyle(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (QuizQuestions().quizQuestions[i].option3 ==
                          QuizQuestions().quizQuestions[i].answer) {
                        trackingScore[i] = Icon(
                          Icons.check_outlined,
                          color: Colors.green,
                        );
                        scores[i] = 1;
                        i = i + 1;
                      } else {
                        trackingScore[i] = Icon(
                          Icons.close,
                          color: Colors.red,
                        );
                        i = i + 1;
                      }
                    });
                  },
                  child: Text(
                    '${QuizQuestions().quizQuestions[i].option3}',
                    style: TextStyle(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (QuizQuestions().quizQuestions[i].option4 ==
                          QuizQuestions().quizQuestions[i].answer) {
                        trackingScore[i] = Icon(
                          Icons.check_outlined,
                          color: Colors.green,
                        );
                        scores[i] = 1;
                        i = i + 1;
                      } else {
                        trackingScore[i] = Icon(
                          Icons.close,
                          color: Colors.red,
                        );
                        i = i + 1;
                      }
                    });
                  },
                  child: Text(
                    '${QuizQuestions().quizQuestions[i].option4}',
                    style: TextStyle(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Quiz Over',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      scores.forEach((element) {
                        total = total + element;
                      });
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return QuizResults(
                          scores: total,
                        );
                      }));
                    },
                    child: Text(
                      'Continue to results',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
