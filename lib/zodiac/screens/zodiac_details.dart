import 'package:flutter/material.dart';
import 'package:kohli_internship/zodiac/modal/zodiac_modal.dart';

class ZodiacInformation extends StatelessWidget {
  final ZodiacDetails zodiacDetails;

  ZodiacInformation({
    required this.zodiacDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Zodiacs'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/zodiac/back.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.45),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Image(
                  image: AssetImage('images/zodiac/${zodiacDetails.imgUrl}'),
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
