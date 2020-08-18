import 'package:flutter/material.dart';
import 'package:youtube_ui/HomePage.dart';
import 'package:youtube_ui/notificationsPage.dart';
import 'libraryPage.dart';
import 'ExplorePage.dart';
import 'searchPage.dart';
class subscriptionsPage extends StatefulWidget {
  @override
  _subscriptionsPageState createState() => _subscriptionsPageState();
}

class _subscriptionsPageState extends State<subscriptionsPage>{
  @override
  void _onItemTapped(int index){
    if(index == 0){
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HomePage()
          )
      );
    }
    else if(index==1){
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ExplorePage()
          )
      );
    }
    else if(index == 2){
      //SubscriptionsPage();
    }
    else if(index == 3){
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => notificationsPage()
          )
      );
    }
    else if(index == 4){

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => libraryPage()
          )
      );
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
        padding: EdgeInsets.all(45.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You don't have any subscriptions",
              style: TextStyle(
                  fontSize: 22),

            )
          ],

        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          currentIndex: 2,
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