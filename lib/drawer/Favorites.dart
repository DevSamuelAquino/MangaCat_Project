import 'package:flutter/material.dart';
import 'package:manga_cat/screens/MangaCatalog.dart';

class Favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MangaCatalog(),
                ),
              );
            },
            child: Text(
              'favorites',
            ),
          ),
        ],
      ),
    );
  }
}
