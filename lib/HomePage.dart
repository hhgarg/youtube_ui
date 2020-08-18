import 'package:flutter/material.dart';
import 'notificationsPage.dart';
import 'subscriptionsPage.dart';
import 'libraryPage.dart';
import 'package:youtube_ui/ExplorePage.dart';
import 'searchPage.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _onItemTapped(int index){
      if(index == 0){

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

        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => libraryPage()
            )
        );
      }

  }
  @override
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
      body: _body(),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          currentIndex: 0,
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

  Widget _body() {
    return ListView(
      children: List.generate(5, (int i) {
        return Column(
          children: <Widget>[
            Image.asset("assets/image.png"),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/image.png"),
              ),
              title: Text(
                "This UI is YouTube.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("Harsh_Garg * 1 M Views * 1 day ago"),
            ),
            SizedBox(
              height: 20,
            )
          ],
        );
      }),
    );
  }

}