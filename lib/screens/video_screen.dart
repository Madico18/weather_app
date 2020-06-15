import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../widgets/chewie_item.dart';

class VideoScreen extends StatelessWidget {
  static const routeName = '/video';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Weather Demo App',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 24.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.blueGrey[200],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ChewieItem(
          videoPlayerController:
              VideoPlayerController.asset('assets/video/trim1.mp4'),
          loop: true,
        ),
      ),
    );
  }
}
