class Quiz {
  final String question;
  final String option1;
  final String option2;
  final String option3;
  final String option4;
  final String answer;

  Quiz({
    required this.question,
    required this.option1,
    required this.option2,
    required this.option3,
    required this.option4,
    required this.answer,
  });
}

class QuizQuestions {
  List<Quiz> quizQuestions = [
    Quiz(
      question: 'What are the dates for Aries?',
      option1: 'Mar 21-Apr 19',
      option2: 'Mar 22-Apr 19',
      option3: 'Mar 2-Apr 18',
      option4: 'Mar 24-Apr 17',
      answer: 'Mar 21-Apr 19',
    ),
    Quiz(
      question: 'What is the symbol for Leo?',
      option1: 'Ram',
      option2: 'Goat',
      option3: 'Bull',
      option4: 'Lion',
      answer: 'Lion',
    ),
    Quiz(
      question: 'Which is an air symbol?',
      option1: 'Cancer',
      option2: 'Leo',
      option3: 'Gemini',
      option4: 'Taurus',
      answer: 'Gemini',
    ),
    Quiz(
      question: 'How many zodiac signs are there?',
      option1: '13',
      option2: '14',
      option3: '12',
      option4: '11',
      answer: '12',
    ),
    Quiz(
      question: 'Which is a winter constellation?',
      option1: 'Capricorn',
      option2: 'Gemini',
      option3: 'Aquarius',
      option4: 'Aries',
      answer: 'Gemini',
    ),
  ];
}
