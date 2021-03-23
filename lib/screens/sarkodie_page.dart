import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_app/models/songs.dart';
import 'package:music_app/screens/banner.dart';
import 'package:music_app/screens/player.dart';
import 'package:music_app/utils/const_variables.dart';

class SarkodiePage extends StatefulWidget {
  @override
  _SarkodiePageState createState() => _SarkodiePageState();
}

class _SarkodiePageState extends State<SarkodiePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      appBar: AppBar(
        backgroundColor: BackgroundColor,
        centerTitle: true,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
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
        child: ListView(
          children: [
            SarkodieBanner(),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Albums',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16.0,
                    color: GreenColor
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0,),
            Container(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: topAlbums.length,
                itemBuilder: (BuildContext context, int index){

                  return GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (ctx) => Player(
                              songImage: topAlbums[index].image,
                              songTitle: topAlbums[index].title,
                            )
                        )
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      width: 200.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: GridTile(
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage(topAlbums[index].image),
                          ),
                          footer: GridTileBar(
                            backgroundColor: Colors.black.withOpacity(0.4),
                            title: Text(topAlbums[index].title,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 19.0,
                            ),
                            ),
                            subtitle: Text(
                              topAlbums[index].date,
                              style: TextStyle(
                                fontFamily: 'Montserrat'
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Songs',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16.0,
                      color: GreenColor
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0,),
            Container(
              height: 200.0,
              child: Container(
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                child: ListView.builder(
                  itemCount: topSongs.length,
                  itemBuilder: (BuildContext context, int index){
                    return Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.play,
                          color: GreenColor,
                          size: 17.0,
                        ),
                        SizedBox(width: 15.0),
                        Text(
                          topSongs[index].title,
                          style: TextStyle(
                            fontSize: 17.0,
                            fontFamily: 'Montserrat'
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text(
                              topSongs[index].time,
                              style: TextStyle(
                                fontSize: 17.0,
                                fontFamily: 'Montserrat'
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 46.0,
                        ),
                      ],
                    );
                  },
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
