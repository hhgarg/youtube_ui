import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
class VideoDetail extends StatefulWidget {
  //final YoutubeModel detail;

  const VideoDetail({Key key}) : super(key: key);

  @override
  _VideoDetailState createState() => _VideoDetailState();
}

class _VideoDetailState extends State<VideoDetail> {
  ChewieController _chewieController;
  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
      videoPlayerController: VideoPlayerController.asset('assets/sample.mp4'),
      aspectRatio: 16/9,
      autoInitialize: true,
      autoPlay: true,
      looping: true,
      errorBuilder: (context , errorMessage){
        return Text(
          errorMessage,
          style: TextStyle(color: Colors.white),
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    List<Widget> _layouts = [
      _videoInfo(),
      _channelInfo(),
      _moreInfo(),
      /*VideoList(
        listData: youtubeData,
        isMiniList: true,
      ),*/
    ];

    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      _layouts.clear();
    }

    return Scaffold(
        body: Column(
            children: <Widget>[
              _buildVideoPlayer(context),
              Expanded(
                  child: ListView(
                  children: _layouts,
          ),
        )
      ],
    ));
  }

  Widget _buildVideoPlayer(BuildContext context) {
      return Chewie(
        controller: _chewieController,
      );
  }

  int likeCount = 1,
      dislikeCount = 1,
      subscriberCount = 0,
      viewCount = 12,
      lb = 0,
      dlb = 0;
  Color likecol = Colors.grey[700], dislikecol = Colors.grey[700];

  Widget _videoInfo() {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text("Sample Video"),
          subtitle: Text(viewCount.toString()),
          trailing: Icon(Icons.arrow_drop_down),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  IconButton(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    icon: Icon(
                      Icons.thumb_up,
                      color: likecol,
                    ),
                    onPressed: () {
                      setState(() {
                        if (lb == 0) {
                          likeCount = likeCount + 1;
                          lb = 1;
                          likecol = Colors.blue;
                          if (dlb == 1) {
                            dislikecol = Colors.grey[700];
                            dlb = 0;
                            dislikeCount = dislikeCount - 1;
                          }
                        } else {
                          likeCount = likeCount - 1;
                          lb = 0;
                          likecol = Colors.grey[700];
                        }
                      });
                    },
                  ),
                  Text(
                    likeCount.toString(),
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  IconButton(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    icon: Icon(
                      Icons.thumb_down,
                      color: dislikecol,
                    ),
                    onPressed: () {
                      setState(() {
                        if (dlb == 0) {
                          dislikeCount = dislikeCount + 1;
                          dlb = 1;
                          dislikecol = Colors.blue;
                          if (lb == 1) {
                            likeCount = likeCount - 1;
                            lb = 0;
                            likecol = Colors.grey[700];
                          }
                        } else {
                          dislikeCount = dislikeCount - 1;
                          dlb = 0;
                          dislikecol = Colors.grey[700];
                        }
                      });
                    },
                  ),
                  Text(
                    dislikeCount.toString(),
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  IconButton(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    icon: Icon(
                      Icons.share,
                      color: Colors.grey[700],
                    ),
                    onPressed: () {
                      final RenderBox box = context.findRenderObject();
                      Share.share('Share',
                          subject: 'xyz',
                          sharePositionOrigin:
                              box.localToGlobal(Offset.zero) & box.size);
                    },
                  ),
                  Text(
                    "Share",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
              _buildButtonColumn(Icons.cloud_download, "Download"),
              _buildButtonColumn(Icons.playlist_add, "Save"),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildButtonColumn(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Icon(
            icon,
            color: Colors.grey[700],
          ),
        ),
        Text(
          text,
          style: TextStyle(color: Colors.grey[700]),
        ),
      ],
    );
  }

  Widget _channelInfo() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey, width: 0.5),
          bottom: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.black,
              ),
              title: Text(
                "Harsh Garg",
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text("$subscriberCount subscribers"),
            ),
          ),
          FlatButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.play_circle_filled,
                color: Colors.red,
              ),
              label: Text(
                "SUBSCRIBE",
                style: TextStyle(color: Colors.red),
              ))
        ],
      ),
    );
  }

  Widget _moreInfo() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(child: Text("Up next")),
          Text("Autoplay"),
          Switch(
            onChanged: (c) {},
            value: true,
          ),
        ],
      ),
    );
  }
  @override
  void dispose() {
    _chewieController.videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }
}
