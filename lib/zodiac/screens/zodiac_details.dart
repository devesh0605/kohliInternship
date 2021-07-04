import 'package:flutter/material.dart';

class ZodiacDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  image: AssetImage('images/zodiac/taurus.gif'),
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
