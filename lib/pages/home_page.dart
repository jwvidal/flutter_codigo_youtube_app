import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            Divider(
              color: Colors.white,
            ),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Color(0xff383838)),
                  icon: Icon(Icons.explore),
                  label: Text("Explorar"),
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
            Container(
              child: Column(
                children: [
                  Container(
                    height: 240,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://i.ytimg.com/vi/MNBf-ylhtK0/maxresdefault.jpg")
                      )
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      child: CircleAvatar(
                        radius: 24,
                        backgroundImage: NetworkImage(
                            "https://raw.githubusercontent.com/pablokbs/peladonerd/master/assets/peladonerd.png"),
                      ),
                    ),
                    title: Text("La ENORME infrastuctura de MERCADO LIBRE",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    ),
                    subtitle: Text("Pelado Nerd • 12.342 visualizaciones • hace 3 días",
                      style: TextStyle(
                          color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                    horizontalTitleGap: 5,
                    minVerticalPadding: 0,
                    trailing: Icon(Icons.more_vert, color: Colors.white, size: 20,),
                    isThreeLine: true,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}