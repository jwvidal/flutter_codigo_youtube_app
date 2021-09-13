

import 'package:flutter/material.dart';
import 'package:flutter_codigo3_youtube/widget/item_video_detail_widget.dart';

class ChannelVideoPage extends StatefulWidget {
  const ChannelVideoPage({Key? key}) : super(key: key);

  @override
  _ChannelVideoPageState createState() => _ChannelVideoPageState();
}

class _ChannelVideoPageState extends State<ChannelVideoPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ItemVideoDetailWidget(),
          ItemVideoDetailWidget(),
          ItemVideoDetailWidget(),
          ItemVideoDetailWidget(),
          ItemVideoDetailWidget(),
          ItemVideoDetailWidget(),
          ItemVideoDetailWidget(),
          ItemVideoDetailWidget(),
        ],
      ),
    );
  }
}