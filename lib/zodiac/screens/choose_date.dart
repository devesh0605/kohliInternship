import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kohli_internship/widgets/custom_drawer.dart';
import 'package:kohli_internship/zodiac/logic/find_sign.dart';
import 'package:kohli_internship/zodiac/modal/zodiac_modal.dart';
import 'package:kohli_internship/zodiac/screens/zodiac_details.dart';

class ChooseDate extends StatefulWidget {
  @override
  _ChooseDateState createState() => _ChooseDateState();
}

class _ChooseDateState extends State<ChooseDate> {
  String _selectedDay = '';
  String _selectedMonth = '';
  String _selectedYear = '';
  String _finalDate = '';
  void _presentDatePicker() {
    showDatePicker(
      context: context,
      lastDate: DateTime.now(),
      initialDate: DateTime.now(),
      firstDate: DateTime(1947),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDay = pickedDate.day.toString();
        _selectedMonth = pickedDate.month.toString();
        _selectedYear = pickedDate.year.toString();
        _finalDate = _selectedDay + '/' + _selectedMonth + '/' + _selectedYear;
        print(_finalDate);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Find your Zodiac',
          style: GoogleFonts.dancingScript(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('images/zodiac/back.jpg'),
              fit: BoxFit.cover,
            )),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.45),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    _presentDatePicker();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Text(
                      _finalDate == '' ? 'Choose Date' : 'Choose Again',
                      style: TextStyle(
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  _finalDate == '' ? 'No date chosen' : _finalDate,
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                if (_finalDate != '')
                  InkWell(
                    onTap: () {
                      ZodiacDetails sign = findYourZodiac(
                          int.parse(_selectedDay), int.parse(_selectedMonth));
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ZodiacInformation(
                          zodiacDetails: sign,
                        );
                      }));

                      // _presentDatePicker();
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.green[900],
                      ),
                      child: Text(
                        'Find Your Zodiac',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
