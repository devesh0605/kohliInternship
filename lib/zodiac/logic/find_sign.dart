import 'package:kohli_internship/zodiac/modal/zodiac_modal.dart';

ZodiacDetails findYourZodiac(int day, int month) {
  if ((month == 3 && day >= 21) || (month == 4 && day <= 19)) {
    return ZodiacDetails(
      name: 'Aries:The Ram',
      details:
          'The pioneer and trailblazer of the horoscope wheel, Aries energy helps us initiate, fight for our beliefs and fearlessly put ourselves out there.',
      imgUrl: 'aries.gif',
      span: '(March 21-April 19)',
    );
  } else if ((month == 4 && day >= 20) || (month == 5 && day <= 20)) {
    return ZodiacDetails(
      name: 'Taurus:The Bull',
      details:
          'The persistent provider of the horoscope family, Taurus energy helps us seek security, enjoy earthly pleasures and get the job done.',
      imgUrl: 'taurus.gif',
      span: '(April 20-May 20)',
    );
  } else if ((month == 5 && day >= 21) || (month == 6 && day <= 20)) {
    return ZodiacDetails(
      name: 'Gemini:The Twins',
      details:
          'The most versatile and vibrant horoscope sign, Gemini energy helps us communicate, collaborate and fly our freak flags at full mast.',
      imgUrl: 'gemini.gif',
      span: '(May 21-June 20)',
    );
  } else if ((month == 6 && day >= 21) || (month == 7 && day <= 22)) {
    return ZodiacDetails(
      name: 'Cancer:The Crab',
      details:
          'The natural nurturer of the horoscope wheel, Cancer energy helps us connect with our feelings, plant deep roots and feather our family nests.',
      imgUrl: 'cancer.gif',
      span: '(June 21-July 22)',
    );
  } else if ((month == 7 && day >= 23) || (month == 8 && day <= 22)) {
    return ZodiacDetails(
      name: 'Leo: The Lion',
      details:
          'The drama queen and regal ruler of the horoscope clan, Leo energy helps us shine, express ourselves boldly and wear our hearts on our sleeves.',
      imgUrl: 'leo.gif',
      span: '(July 23-August 22)',
    );
  } else if ((month == 8 && day >= 23) || (month == 9 && day <= 22)) {
    return ZodiacDetails(
      name: 'Virgo: The Virgin',
      details:
          'The masterful helper of the horoscope wheel, Virgo energy teaches us to serve, do impeccable work and prioritize wellbeing—of ourselves, our loved ones and the planet.',
      imgUrl: 'virgo.gif',
      span: '(August 23-September 22)',
    );
  } else if ((month == 9 && day >= 23) || (month == 10 && day <= 22)) {
    return ZodiacDetails(
      name: 'Libra: The Scales',
      details:
          'The balanced beautifier of the horoscope family, Libra energy inspires us to seek peace, harmony and cooperation—and to do it with style and grace.',
      imgUrl: 'libra.gif',
      span: '(September 23-October 22)',
    );
  } else if ((month == 10 && day >= 23) || (month == 11 && day <= 21)) {
    return ZodiacDetails(
      name: 'Scorpio: The Scorpion',
      details:
          'The most intense and focused of the horoscope signs, Scorpio energy helps us dive deep, merge our superpowers and form bonds that are built to last.',
      imgUrl: 'scorpio.gif',
      span: '(October 23-November 21)',
    );
  } else if ((month == 11 && day >= 22) || (month == 12 && day <= 21)) {
    return ZodiacDetails(
      name: 'Sagittarius: The Archer',
      details:
          'The worldly adventurer of the horoscope wheel, Sagittarius energy inspires us to dream big, chase the impossible and take fearless risks.',
      imgUrl: 'sag.gif',
      span: '(November 22-December 21)',
    );
  } else if ((month == 12 && day >= 22) || (month == 1 && day <= 19)) {
    return ZodiacDetails(
      name: 'Capricorn: The Goat',
      details:
          'The measured master planner of the horoscope family, Capricorn energy teaches us the power of structure and long-term goals.',
      imgUrl: 'cap.gif',
      span: '(December 22-January 19)',
    );
  } else if ((month == 1 && day >= 20) || (month == 2 && day <= 18)) {
    return ZodiacDetails(
      name: 'Aquarius: The Water Bearer',
      details:
          'The mad scientist and humanitarian of the horoscope wheel, futuristic Aquarius energy helps us innovate and unite for social justice.',
      imgUrl: 'aqua.gif',
      span: '(January 20-February 18)',
    );
  }
  return ZodiacDetails(
    name: 'Pisces: The Fish',
    details:
        'The dreamer and healer of the horoscope family, Pisces energy awakens compassion, imagination and artistry, uniting us as one.',
    imgUrl: 'pisces.gif',
    span: '(February 19-March 20)',
  );
}
