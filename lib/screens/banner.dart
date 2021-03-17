import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:music_app/utils/const_variables.dart';

class SarkodieBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220.0,
      decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/wallpaper.jpg'),
          ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Container(
        margin: EdgeInsets.all(25.0),
        child: Column(
          children: [
            Expanded(
              child: Text(
                'Sarkodie',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                  fontSize: 30.0
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    '4,125\nFollowers',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white
                    ),
                ),
                Text(
                  '13,125\nListeners',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white
                  ),
                ),
                ElevatedButton(
                    onPressed: (){
                      print('Follow');
                    },
                    child: Text('Follow', style: TextStyle(fontFamily: 'Montserrat'),),
                  style: ElevatedButton.styleFrom(
                    primary: GreenColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
