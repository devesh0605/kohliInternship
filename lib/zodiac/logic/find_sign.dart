import 'package:kohli_internship/zodiac/modal/zodiac_modal.dart';

ZodiacDetails findYourZodiac(int day, int month) {
  if ((month == 3 && day >= 21) || (month == 4 && day <= 19)) {
    return ZodiacDetails(
      name: 'Aries',
      details: 'details',
      imgUrl: 'aries.gif',
      span: '(March 21-April 19)',
    );
  } else if ((month == 4 && day >= 20) || (month == 5 && day <= 20)) {
    return ZodiacDetails(
      name: 'Taurus',
      details: 'details',
      imgUrl: 'taurus.gif',
      span: '(April 20-May 20)',
    );
  } else if ((month == 5 && day >= 21) || (month == 6 && day <= 20)) {
    return ZodiacDetails(
      name: 'Gemini',
      details: 'details',
      imgUrl: 'gemini.gif',
      span: '(May 21-June 20)',
    );
  } else if ((month == 6 && day >= 21) || (month == 7 && day <= 22)) {
    return ZodiacDetails(
      name: 'Cancer',
      details: 'details',
      imgUrl: 'cancer.gif',
      span: '(June 21-July 22)',
    );
  } else if ((month == 7 && day >= 23) || (month == 8 && day <= 22)) {
    return ZodiacDetails(
      name: 'Leo',
      details: 'details',
      imgUrl: 'leo.gif',
      span: '(July 23-August 22)',
    );
  } else if ((month == 8 && day >= 23) || (month == 9 && day <= 22)) {
    return ZodiacDetails(
      name: 'Virgo',
      details: 'details',
      imgUrl: 'virgo.gif',
      span: '(August 23-September 22)',
    );
  } else if ((month == 9 && day >= 23) || (month == 10 && day <= 22)) {
    return ZodiacDetails(
      name: 'Libra',
      details: 'details',
      imgUrl: 'libra.gif',
      span: '(September 23-October 22)',
    );
  } else if ((month == 10 && day >= 23) || (month == 11 && day <= 21)) {
    return ZodiacDetails(
      name: 'Scorpio',
      details: 'details',
      imgUrl: 'scorpio.gif',
      span: '(October 23-November 21)',
    );
  } else if ((month == 11 && day >= 22) || (month == 12 && day <= 21)) {
    return ZodiacDetails(
      name: 'Sagittarius',
      details: 'details',
      imgUrl: 'sag.gif',
      span: '(November 22-December 21)',
    );
  } else if ((month == 12 && day >= 22) || (month == 1 && day <= 19)) {
    return ZodiacDetails(
      name: 'Capricorn',
      details: 'details',
      imgUrl: 'cap.gif',
      span: '(December 22-January 19)',
    );
  } else if ((month == 1 && day >= 20) || (month == 2 && day <= 18)) {
    return ZodiacDetails(
      name: 'Aquarius',
      details: 'details',
      imgUrl: 'aqua.gif',
      span: '(January 20-February 18)',
    );
  }
  return ZodiacDetails(
    name: 'Pisces',
    details: 'details',
    imgUrl: 'pisces.gif',
    span: '(February 19-March 20)',
  );
}
