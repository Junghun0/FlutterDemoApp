import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ListViewType01 extends StatefulWidget {
  @override
  _ListViewType01State createState() => _ListViewType01State();
}

class _ListViewType01State extends State<ListViewType01> {

  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'ninDpLhjaA8',
  );

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        bottomActions: [
        CurrentPosition(),
    ProgressBar(isExpanded: true),
    ],
    );
//      Text('Test View Type 01',style: TextStyle(fontSize: 25, color: Colors.amber), textAlign: TextAlign.center,);
  }
}
