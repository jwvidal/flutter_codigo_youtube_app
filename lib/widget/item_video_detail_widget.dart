import 'package:flutter/material.dart';

class ItemVideoDetailWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 112.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Stack(
                children: [
                  Image.network(
                    "https://picjumbo.com/wp-content/uploads/abstract-background-free-photo-1080x720.jpg",
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 8,
                    right: 14,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 1, horizontal: 4.0),
                      decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Text("9:21", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Text(
                    "Taste Testing Viral TikTok Bubble Teas",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "46.343 visualizaciones hace 2 meses",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white60,fontSize: 12.0),
                  )

                ],
              ),
            ),
          ),
          Icon(Icons.more_vert, color: Colors.white,),
        ],
      ),
    );
  }
}