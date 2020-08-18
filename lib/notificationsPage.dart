import 'subscriptionsPage.dart';
import 'package:flutter/material.dart';
import 'package:youtube_ui/HomePage.dart';
import 'libraryPage.dart';
import 'ExplorePage.dart';
import 'searchPage.dart';
class notificationsPage extends StatefulWidget {
  @override
  _notificationsPageState createState() => _notificationsPageState();
}

class _notificationsPageState extends State<notificationsPage>{
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

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => subscriptionsPage()
          )
      );
    }
    else if(index == 3){

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
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.notifications,
                size: 100,
                color: Colors.grey[600],
              ),
              SizedBox(height: 20),
              Text(
                "Your notifications live here",
                style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 30),

              )
            ],

      ),
        ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          currentIndex: 3,
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