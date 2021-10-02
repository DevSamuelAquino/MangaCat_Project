import 'package:flutter/material.dart';
import 'package:manga_cat/Drawer/Favorites.dart';
import 'package:manga_cat/Drawer/TopCharacters.dart';
import 'package:manga_cat/Drawer/Profile.dart';
import 'package:manga_cat/Drawer/Gallery.dart';
// import 'package:manga_cat/widgets/FormCharacters.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromRGBO(
          106,
          90,
          205,
          1.0,
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 72.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 8.0),
                          padding: const EdgeInsets.only(bottom: 2.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.black,
                                width: 2.0,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              bottom: 24.0,
                            ),
                            child: Wrap(
                              children: [
                                Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image:
                                          AssetImage('assets/images/gura.png'),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.only(left: 24.0, top: 32.0),
                                  child: Text(
                                    'Samuel',
                                    style: TextStyle(
                                      fontSize: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 24.0, right: 128.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Profile(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 24.0,
                                  ),
                                  child: Icon(
                                    Icons.account_box_sharp,
                                    size: 32.0,
                                  ),
                                ),
                                Text(
                                  'Profile',
                                  style: TextStyle(fontSize: 25.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Gallery(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 24.0),
                                  child: Icon(
                                    IconData(57857,
                                        fontFamily: 'MaterialIcons'),
                                    size: 32.0,
                                  ),
                                ),
                                Text(
                                  'Gallery',
                                  style: TextStyle(fontSize: 25.0),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Favorites(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 24.0),
                                  child: Icon(
                                    IconData(62432,
                                        fontFamily: 'MaterialIcons'),
                                    size: 32.0,
                                  ),
                                ),
                                Text(
                                  'Favorites',
                                  style: TextStyle(fontSize: 25.0),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => TopCharacters(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 24.0),
                                  child: Icon(
                                    IconData(63568,
                                        fontFamily: 'MaterialIcons'),
                                    size: 32.0,
                                  ),
                                ),
                                Text(
                                  'Top Characters',
                                  style: TextStyle(fontSize: 25.0),
                                )
                              ],
                            ),
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
    );
  }
}
