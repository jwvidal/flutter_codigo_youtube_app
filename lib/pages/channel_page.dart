import 'package:flutter/material.dart';


import 'channel_home_page.dart';
import 'channel_video_page.dart';

class ChannelPage extends StatefulWidget {
  @override
  _ChannelPageState createState() => _ChannelPageState();
}

class _ChannelPageState extends State<ChannelPage> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 6, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181818),
      appBar: AppBar(
        backgroundColor: Color(0xff29297F),
        elevation: 0,
        title: Text(
          "The Weeknd",
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.cast),),
          IconButton(onPressed: (){}, icon: Icon(Icons.search),),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert),),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          isScrollable: true,
          controller: _tabController,
          tabs: [
            Tab(
              text: "INICIO",
            ),
            Tab(
              text: "VÍDEO",
            ),
            Tab(
              text: "LISTAS",
            ),
            Tab(
              text: "COMUNIDAD",
            ),
            Tab(
              text: "CANAL",
            ),
            Tab(
              text: "MÁS INFORMACIÓN",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ChannelHomePage(),
          ChannelVideoPage(),
          Center(child: Text("3", style: TextStyle(color: Colors.white),),),
          Center(child: Text("4", style: TextStyle(color: Colors.white),),),
          Center(child: Text("5", style: TextStyle(color: Colors.white),),),
          Center(child: Text("6", style: TextStyle(color: Colors.white),),),
        ],
      ),
    );
  }
}