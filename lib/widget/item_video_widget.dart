import 'package:flutter/material.dart';

class ItemVideoIntroWidget extends StatelessWidget {

  String image;
  String title;

  ItemVideoIntroWidget({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 240.0,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(this.image),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 24,
              backgroundImage: NetworkImage(
                  "https://yt3.ggpht.com/a-/AAuE7mDkfW6BZbD6RH0yJcsXKFyTWCbLOR1xeMiYPA=s240-mo-c-c0xffffffff-rj-k-no"),
            ),
            title: Text(
              this.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "Pelado Nerd • 12.342 visualizaciones • hace 3 días",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white54, fontSize: 12),
            ),
            horizontalTitleGap: 10,
            minVerticalPadding: 0,
            trailing: Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 20,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 8,
            width: double.infinity,
            color: Color(0xff383838),
          ),
        ],
      ),
    );
  }
}