import 'package:cricbuzz/ToBeDone.dart';
import 'package:flutter/material.dart';
import 'package:cricbuzz/ScreenA.dart';
import 'package:cricbuzz/ScreenB.dart';
import 'package:cricbuzz/ScreenC.dart';
import 'package:cricbuzz/ScreenD.dart';
import 'package:google_fonts/google_fonts.dart';
class homepage extends StatefulWidget implements PreferredSizeWidget {
  const homepage({super.key});
  @override
  State<homepage> createState() => _homepageState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

int selectedindex = 0;
int currentindex = 0;
const IconData menu = IconData(0xe3dc, fontFamily: 'MaterialIcons');
List myList = [
  ScreenA(),
  ScreenB(),
  ScreenC(),
  ScreenD()
];
class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        toolbarHeight: 75.0,
        // leading: IconButton(
        //   icon: Icon(Icons.menu, color: Colors.white,), onPressed: () {},
        // ),
        title:
        Row(
          children: [
            Expanded(
              flex: 6,
              child: Center(
                child: Container(
                  child: Text("CricBuzz",
                        style: textstyle(Colors.white,25,10),
                  ),
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      shape: StadiumBorder(
                          side: BorderSide(
                              color: Colors.teal,width: 2)
                      )
                ),
                onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ToBeDone(),
                    ),
                  );
                },
                child: Text("More",
                  style: TextStyle(
                     color: Colors.blueGrey
                  ),
                )
            )
          ],
        ),
      ),
      body:
      myList[selectedindex],
      drawer: Drawer(
        elevation: 4,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              curve: Curves.easeInOutQuad,
              decoration: BoxDecoration(color: Colors.teal),
                child: Column(
                  children: [
                    Icon(Icons.person),
                    Text("Welcome to MAB Era",
                    style: GoogleFonts.heptaSlab(
                        color: Colors.white,
                        fontSize: 16
                    ),
                    ),
                  ],
                )
            ),
            ListTile(
              leading: Icon(Icons.open_with_sharp),
              title: Text("Item A"),
              onTap: () {
                Navigator.pop(context);
                ScreenC();
                // Navigate to about screen or perform action
              },
            ),
            ListTile(
              leading: Icon(Icons.sports_baseball),
              title: Text("Item B"),
              onTap: () {
                Navigator.pop(context);
                ScreenC();
                // Navigate to about screen or perform action
              },
            ),
            ListTile(
              leading: Icon(Icons.gite_rounded),
              title: Text("Item C"),
              onTap: () {
                Navigator.pop(context);
                ScreenC();
              },
            ),
          ],
        ),
      ),
          bottomNavigationBar:  BottomNavigationBar(
            unselectedIconTheme: IconThemeData(color: Colors.black54,size: 20.0),
            elevation: 3,
            iconSize: 30.0,
            selectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: "Home", backgroundColor: Colors.teal),
              BottomNavigationBarItem(icon: Icon(Icons.language_rounded), label: "Rankings", backgroundColor: Colors.teal),
              BottomNavigationBarItem(icon: Icon(Icons.stadium), label: "Matches", backgroundColor: Colors.teal),
              BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "Stats", backgroundColor: Colors.teal),
            ],
            currentIndex: selectedindex,
            onTap: (value){
              setState(() {
                selectedindex = value;
              });
            },
          ),

    );
  }

  TextStyle textstyle([colors, size, space]) {
    return TextStyle(
              color: colors,
              fontSize: size,
              letterSpacing: space,
              fontWeight: FontWeight.w600,
            );
  }
  TextStyle textstylecontent([colors, size, space]) {
    return TextStyle(
      color: colors,
      fontSize: size,
      letterSpacing: space,
      fontWeight: FontWeight.w200,
    );
  }
}







