import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo3_youtube/widget/item_video_widget.dart';
import 'package:flutter_codigo3_youtube/widget/item_video_widget.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List listRegularVideo = [];

  @override
  initState(){
    super.initState();
    getRegularData();
  }

  getRegularData() async{
    String _path = "https://youtube.googleapis.com/youtube/v3/search?part=snippet&key=&maxResults=20";
    Uri _uri = Uri.parse(_path);
    http.Response response = await http.get(_uri);
    if(response.statusCode == 200){
      Map<String, dynamic> myMap = json.decode(response.body);
      listRegularVideo = myMap["items"];
      setState(() {

      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/video.png',
              height: 30,
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              "Youtube",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.cast),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_active_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          Container(
            margin: EdgeInsets.only(left: 4, right: 10.0),
            child: CircleAvatar(
              radius: 14,
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/3482523/pexels-photo-3482523.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260"),
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, right: 4),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(primary: Color(0xff383838)),
                    icon: Icon(Icons.explore),
                    label: Text("Explorar"),
                  ),
                ),
                Container(
                  height: 26.0,
                  child: VerticalDivider(
                    color: Colors.white24,
                    thickness: 1,
                    width: 26,
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.0),
                          child: FilterChip(
                            label: Text("Todo"),
                            backgroundColor: Colors.white,
                            onSelected: (bool value) {},
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.0),
                          child: FilterChip(
                            elevation: 0,
                            label: Text(
                              "Novedades par ti",
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Color(0xff383838),
                            onSelected: (bool value) {},
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.0),
                          child: FilterChip(
                            elevation: 0,
                            label: Text(
                              "Cine de ciencia ficción",
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Color(0xff383838),
                            onSelected: (bool value) {},
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.0),
                          child: FilterChip(
                            elevation: 0,
                            label: Text(
                              "Rock",
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Color(0xff383838),
                            onSelected: (bool value) {},
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.0),
                          child: FilterChip(
                            elevation: 0,
                            label: Text(
                              "Animes",
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Color(0xff383838),
                            onSelected: (bool value) {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4.0,
            ),
            ListView.builder(
              primary: true,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: listRegularVideo.length,
              itemBuilder: (BuildContext context, int index){
                return ItemVideoIntroWidget(
                  image: listRegularVideo[index]["snippet"]["thumbnails"]["high"]["url"],
                  title: listRegularVideo[index]["snippet"]["title"],
                );
              },
            )
            // Container(
            //   margin: EdgeInsets.symmetric(vertical: 12.0),
            //   child: Column(
            //     children: [
            //       Row(
            //         children: [
            //           Icon(
            //             Icons.play_arrow_sharp,
            //             color: Colors.redAccent,
            //           ),
            //           Text(
            //             "YouTube Shorts",
            //             style: TextStyle(color: Colors.white, fontSize: 16.0),
            //           )
            //         ],
            //       ),
            //       Container(
            //         height: 280,
            //         margin: EdgeInsets.symmetric(vertical: 12.0),
            //         child: ListView.builder(
            //           itemCount: 10,
            //           scrollDirection: Axis.horizontal,
            //           // controller: PageController(viewportFraction: 1),
            //           itemBuilder: (BuildContext context, int index) {
            //             return Container(
            //               width: 180,
            //               margin: EdgeInsets.symmetric(horizontal: 8.0),
            //               decoration: BoxDecoration(
            //                 image: DecorationImage(
            //                     fit: BoxFit.cover,
            //                     image: NetworkImage(
            //                         "https://www.kolpaper.com/wp-content/uploads/2020/11/Minimal-Mobile-Wallpaper.jpg")),
            //               ),
            //               child: Stack(
            //                 children: [
            //                   Align(
            //                     alignment: Alignment.topRight,
            //                     child: IconButton(
            //                       onPressed: () {},
            //                       icon: Icon(Icons.more_vert),
            //                       color: Colors.white,
            //                     ),
            //                   ),
            //                   Align(
            //                     alignment: Alignment.bottomLeft,
            //                     child: Padding(
            //                       padding: const EdgeInsets.all(8.0),
            //                       child: Column(
            //                         crossAxisAlignment:
            //                             CrossAxisAlignment.start,
            //                         mainAxisSize: MainAxisSize.min,
            //                         children: [
            //                           Text(
            //                             "How I Answer Pizza Delivery During Quarantine",
            //                             maxLines: 2,
            //                             overflow: TextOverflow.ellipsis,
            //                             style: TextStyle(
            //                                 color: Colors.white,
            //                                 fontSize: 16.0,
            //                                 fontWeight: FontWeight.w600),
            //                           ),
            //                           SizedBox(
            //                             height: 6.0,
            //                           ),
            //                           Text(
            //                             "2,3 M de visualizacionesa",
            //                             maxLines: 1,
            //                             overflow: TextOverflow.ellipsis,
            //                             style: TextStyle(color: Colors.white),
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                   )
            //                 ],
            //               ),
            //             );
            //           },
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

          ],
        ),
      ),
    );
  }
}