import 'package:flutter/material.dart';
import 'package:flutter_codigo3_youtube/pages/home_page.dart';

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  _InitPageState createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {

  int _currentPage = 0;

  List<Widget> _pages = [
    HomePage(),
    Center(child: Text("Inicio"),),
    Center(child: Text("Shorts"),),
    Center(child: Text("Add"),),
    Center(child: Text("Suscripciones"),),
    Center(child: Text("Biblioteca"),),
  ];

  void _onTapItem(int index){
    _currentPage = index;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212121),
      body: _pages[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff212121),
        onTap: _onTapItem,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentPage,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Inicio"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow),
            label: "YouTube"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_rounded),
            label: "Suscripcion"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_rounded),
            label: "Biblioteca"
          ),
        ],
      ),
    );
  }
}
