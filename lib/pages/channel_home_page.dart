import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo3_youtube/widget/item_video_detail_widget.dart';
import 'package:flutter_codigo3_youtube/widget/item_video_widget.dart';

class ChannelHomePage extends StatefulWidget {
  @override
  _ChannelHomePageState createState() => _ChannelHomePageState();
}

class _ChannelHomePageState extends State<ChannelHomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 130,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://i.pinimg.com/originals/42/41/1f/42411f33717107674e7d2e466b30e134.jpg")),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 24),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 46.0,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260"),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "The Weeknd",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "5,23 M de suscriptores",
                                    style: TextStyle(
                                        color: Colors.white60,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16.0),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    "SUSCRITO",
                                    style: TextStyle(
                                        color: Colors.white60,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.0),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.notifications_active_outlined,
                                color: Colors.white60,
                                size: 32.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // ItemVideoIntroWidget(),
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

