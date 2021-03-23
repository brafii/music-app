import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/utils/const_variables.dart';



class Player extends StatefulWidget {

  final String songImage;
  final String songTitle;

  Player({this.songImage, this.songTitle});

  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {

  double _currentSliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: BackgroundColor,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        title: Text(
          'Now Playing',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Montserrat'
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 20.0),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(widget.songImage),
                    )
                  ),
                ),
              ),
            ),
            SizedBox(height: 35.0),
            Text(
              widget.songTitle,
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold
              ),
            ),
            Expanded(
              child: Slider(
                value: _currentSliderValue,
                activeColor: GreenColor,
                inactiveColor: Colors.grey,
                min: 0,
                max: 100,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value){
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.fast_rewind_outlined,
                        size: 45.0,
                        color: GreenColor,
                      ),
                      onPressed: (){}
                      ),
                  Container(
                    height: 80.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      color: GreenColor,
                      shape: BoxShape.circle
                    ),
                    child: Icon(
                      Icons.play_arrow_outlined,
                      size: 45.0,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.fast_forward_outlined,
                        size: 45.0,
                        color: GreenColor,
                      ),
                      onPressed: (){}
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
