import 'package:flutter/material.dart';
import 'package:youtube_ui/HomePage.dart';
import 'package:youtube_ui/notificationsPage.dart';
import 'subscriptionsPage.dart';
import 'package:youtube_ui/ExplorePage.dart';
import 'searchPage.dart';
class libraryPage extends StatefulWidget {
  @override
  _libraryPageState createState() => _libraryPageState();
}

class _libraryPageState extends State<libraryPage>{
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
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => notificationsPage()
          )
      );
    }
    else if(index == 4){
      //libraryPage();
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
          children: [
            Row(
              children: [
                Icon(Icons.history,
                size: 25,),
                SizedBox(width: 30,),
                Text('History',
                  style: TextStyle(
                    fontSize: 21,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              children: [
                Icon(Icons.file_download,
                  size: 25,),
                SizedBox(width: 30,),
                Text('Downloads',
                  style: TextStyle(
                    fontSize: 21,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              children: [
                Icon(Icons.play_circle_filled,
                  size: 25,),
                SizedBox(width: 30,),
                Text('Your videos',
                  style: TextStyle(
                    fontSize: 21,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              children: [
                Icon(Icons.attach_money,
                  size: 25,),
                SizedBox(width: 30,),
                Text('Purchases',
                  style: TextStyle(
                    fontSize: 21,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              children: [
                Icon(Icons.watch_later,
                  size: 25,),
                SizedBox(width: 30,),
                Text('Watch later',
                  style: TextStyle(
                    fontSize: 21,
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
            SizedBox(height: 18,),

            Row(
              children:[
                SizedBox(width: 10,),
              Text('Playlists',
              style: TextStyle(fontSize: 21),
              textAlign: TextAlign.left,),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children:[

                Icon(
                  Icons.add,
                  color: Colors.blue,
                ),
                SizedBox(width: 20,),
                Text('Add Playlists',
                  style: TextStyle(fontSize: 21,
                  color: Colors.blue),
                  ),
              ],
            ),
          ],

        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          currentIndex: 4,
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