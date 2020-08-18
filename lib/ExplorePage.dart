import 'package:flutter/material.dart';
import 'package:youtube_ui/HomePage.dart';
import 'package:youtube_ui/notificationsPage.dart';
import 'package:youtube_ui/subscriptionsPage.dart';
import 'libraryPage.dart';
import 'searchPage.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  void _onItemTapped(int index) {
    if (index == 0) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else if (index == 1) {
      //ExplorePage();
    } else if (index == 2) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => subscriptionsPage()));
    } else if (index == 3) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => notificationsPage()));
    } else if (index == 4) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => libraryPage()));
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Container(
          width: 120,
          height: 100,
          child: Image.asset("assets/youtube.png"),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.videocam,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => SearchPage()
              )
              );
            },
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/"),
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 180,
                  color: Colors.red[900],
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.trending_up,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(width: 20),
                      Text(
                        "Trending",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  width: 180,
                  color: Colors.green,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.music_note,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(width: 20),
                      Text(
                        "Music",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 180,
                  color: Colors.orange,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.videogame_asset,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(width: 20),
                      Text(
                        "Gaming",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  width: 180,
                  color: Colors.blue,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.library_books,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(width: 20),
                      Text(
                        "News",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 180,
                  color: Colors.yellow,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.local_movies,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(width: 20),
                      Text(
                        "Films",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  width: 180,
                  color: Colors.purpleAccent,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.face,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(width: 20),
                      Text(
                        "Fashion & Beauty",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 180,
                  color: Colors.green,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.lightbulb_outline,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(width: 20),
                      Text(
                        "Learning",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  width: 180,
                  color: Colors.orange[900],
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.wifi_tethering,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(width: 20),
                      Text(
                        "Live",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Trending Videos',
                  style: TextStyle(fontSize: 21),
                  textAlign: TextAlign.left,
                ),
              ],
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          currentIndex: 1,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text("Explore"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions),
              title: Text("Subscriptions"),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.notifications,
                color: Colors.red,
              ),
              icon: Icon(Icons.notifications),
              title: Text("Notifications"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_library),
              title: Text("Library"),
            ),
          ]),
    );
  }
}
