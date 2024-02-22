import 'dart:html';
import 'package:flutter/material.dart';
import 'package:cricbuzz/CardLayout.dart';
import 'package:cricbuzz/CardLayout2.dart';
import 'package:cricbuzz/CardLayout3.dart';
import 'package:google_fonts/google_fonts.dart';
class ScreenA extends StatefulWidget {
  const ScreenA({super.key});

  @override
  State<ScreenA> createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(0.0, 15.0, 5.0, 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child:
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0,0.0,0.0,0.0),
                    child: Row(
                      children: [
                        Icon(Icons.table_chart),
                        Text("Matches",
                        style: GoogleFonts.alegreya(fontSize: 25.0,color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
              ),
              Container(
                height: 190,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                    children: [
                      CardLayout(teamAName: 'IND',teamAScore: 280,oversa: 60,teamBName: 'ENG',teamBScore: 146,oversb: 69),
                      CardLayout2(teamAName: 'AUS',teamAScore: 170,oversa: 20,teamBName: 'NZ',teamBScore: 171,oversb: 19),
                      CardLayout3(teamAName: 'BAN',teamAScore: 294,oversa: 50,teamBName: 'SL',teamBScore: 296,oversb: 49),
                    ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0,25.0,0.0,10.0),
                child: Divider(
                  height: 10,
                  thickness: 2.5,
                  indent: 100,
                  endIndent: 100,
                ),
              ),
              Container(
                child:
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0,9.0,0.0,0.0),
                  child: Row(
                    children: [
                      Icon(Icons.feed_outlined),
                      Text("Featured Trends",
                        style: GoogleFonts.alegreya(fontSize: 25.0,color: Colors.black,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0,0.0,0.0,0.0),
                      child: Container(
                        height: 400,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(
                              height: 400,
                              child: Card(
                                child: Column(
                                  children: [
                                    Text("Latest trends from World Cricket", style: GoogleFonts.alegreya(fontWeight: FontWeight.w700),),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 2.0),
                                        child: Image.network('https://pbs.twimg.com/media/GG2eMqpa0AAVeHh?format=jpg&name=small', height: 250, width: 350,)),
                                    Text("Highest batting average at home (min 3k runs)"),
                                    Text("Don Bradman - 98.22"),
                                    Text("Kane Williamson - 69.7"),
                                    Text("Gary Sobers - 66.8"),
                                    Text("Mohd. Yousuf - 65.25")
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 400,
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.network('https://pbs.twimg.com/media/GGslEqCXAAANuQ6?format=jpg&name=small', height: 290, width: 350),
                                    ),
                                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing"),
                                    Text("Praesent volutpat justo vitae libero vestibulum,"),
                                    Text(" ac fringilla odio dapibus.Nulla facilisi. Sed egdui"),
                                    Text(" at lacus tempor placerat.")
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 400,
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.network('https://pbs.twimg.com/media/GGriFLJXMAA_CKE?format=jpg&name=small', height: 290, width: 350),
                                    ),
                                    Text("Lorem ipsum dolor sit amet, consectetur"),
                                    Text("Praesent volutpat justo vitae libero v"),
                                    Text(" ac fringilla odio dapibus.Nulla facili"),
                                    Text(" at lacus tempor placerat.")
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0,20.0,0.0,10.0),
                      child: Divider(
                        height: 10,
                        thickness: 2.5,
                        indent: 100,
                        endIndent: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 15.0, 10.0, 10.0),
                      child: Row(
                        children: [
                          Icon(Icons.newspaper_sharp),
                          Text("Top Stories",
                          style: GoogleFonts.alegreya(
                              fontSize: 25,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 350,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                              SizedBox(
                                height: 350,
                                child: Card(
                                elevation: 6,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(2.0,2.0,2.0,2.0),
                                      child: Image.network(
                                          'https://pbs.twimg.com/media/GGyYs3HWkAEn3Fv?format=jpg&name=small',
                                          height: 250,
                                          width: 350,
                                        ),
                                    ),
                                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing"),
                                    Text("Praesent volutpat justo vitae libero vestibulum,"),
                                    Text(" ac fringilla odio dapibus.Nulla facilisi. Sed egdui"),
                                    Text(" at lacus tempor placerat.")
                                  ],
                                ),
                                ),
                              ),
                        SizedBox(
                          height: 350,
                          child: Card(
                            elevation: 6,
                            child: Column(
                              children: [
                                Image.network(
                                  'https://pbs.twimg.com/media/GGw8XVdbgAAGwOC?format=jpg&name=small',
                                  height: 250,
                                  width: 350,
                                ),
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing"),
                                Text("Praesent volutpat justo vitae libero vestibulum,"),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 250,
                          child: Card(
                          elevation: 6,
                            child: Column(
                              children: [
                                Image.network(
                                    'https://pbs.twimg.com/media/GG2ElNJWQAAKCuS?format=jpg&name=small',
                                  height: 250,
                                  width: 400,
                                ),
                                Text("Lorem ipsum dolor sit amet, consectetur"),
                                Text("Praesent volutpat justo vitae libero ve"),
                                Text("Lorem ipsum dolor sit amet, consectetur"),
                                Text("Praesent volutpat justo vitae libero ve"),
                              ],
                            ),
                          ),
                        ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0,20.0,0.0,10.0),
                      child: Divider(
                        height: 10,
                        thickness: 2.5,
                        indent: 100,
                        endIndent: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 15.0, 10.0, 10.0),
                      child: Row(
                        children: [
                          Icon(Icons.archive_outlined),
                          Text("Archives",
                            style: GoogleFonts.alegreya(
                              fontSize: 25,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0,12.0,20.0,12.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                Card(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text("Content Title",
                                          style: GoogleFonts.aleo(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      Image.network('https://pbs.twimg.com/media/GGm712iWAAE1KLS?format=jpg&name=small',
                                      ),
                                      Text("The two come from the same area of Baracara in Guyana with many shared memories, mutual love and respect"),
                                      Text("The two come from the same area of Baracara in Guyana with many shared memories, mutual love and respect"),
                                      Text("The two come from the same area of Baracara in Guyana with many shared memories, mutual love and respect"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0,12.0,20.0,12.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                Card(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text("IND v/s ENG TESTS",
                                          style: GoogleFonts.aleo(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      Image.network('https://images.indianexpress.com/2024/02/des.png?resize=450,253',
                                      ),
                                      Text("Ben Stokes is three scalps short of joining an elite list with Garry Sobers and Jacques Kallis as the only men to achieve the Test double of 6000 runs and 200 wickets."),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0,12.0,20.0,12.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                Card(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text("NZ v/s AUS T20Is",
                                          style: GoogleFonts.aleo(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      Image.network(
                                        'https://images.indianexpress.com/2024/02/des-10.jpg?resize=450,253',
                                      ),
                                      Text("Here is a look at the squads, schedule, dates and live streaming details of the Chappell-Hadlee T20I series between New Zealand and Australia."),
                                      Text("New Zealand vs Australia 1st T20 Live Streaming in India: Mitchell Santner's team will host Mitchell Marsh-led Australia in three T20Is for the Chappell-Hadlee Trophy at home.")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0,12.0,20.0,12.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                Card(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text("Content Title",
                                          style: GoogleFonts.aleo(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      Image.network('https://pbs.twimg.com/media/GGm9uYxWYAAWt75?format=jpg&name=small'),
                                      Text("Chipping away, the Ravindra Jadeja way! 👏 👏 !! 2ndwicket for him as England lose Jonny Bairstow. "),
                                      Text("Some Text Here"),
                                      Text("   "),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}

// class ScoreCard extends StatelessWidget {
//   final String teamAName;
//   final int teamAScore;
//   final int oversa;
//   final String teamBName;
//   final int teamBScore;
//   final int oversb;
//
//   ScoreCard({
//     required this.teamAName,
//     required this.teamAScore,
//     required this.oversa,
//     required this.teamBName,
//     required this.teamBScore,
//     required this.oversb,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(30.0,5.0,10.0,5.0),
//       child: SizedBox(
//         width: 450,
//         height: 160,
//         child: Container(
//           child: Card(
//             elevation: 4.0,
//             shadowColor: Colors.black,
//             shape: BeveledRectangleBorder(side: BorderSide(width: 0.02)),
//             // margin: EdgeInsets.symmetric(horizontal: 450.0, vertical: 8.0),
//             child: Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Center(
//                 heightFactor: 100.0,
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Container(
//                       alignment: FractionalOffset.centerLeft,
//                       child: Text(
//                         'England tour of India',
//                         style: TextStyle(
//                           fontFamily: AutofillHints.name,
//                           fontSize: 18.0,
//                           fontWeight: FontWeight.w100,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 20.0),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Icon(Icons.assignment_ind, color: Colors.green),
//                         Expanded(
//                           child: Text(
//                             teamAName,
//                             style: TextStyle(
//                               fontSize: 18.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                         Text("  "),
//                         Expanded(
//                           child: Text(
//                             teamAScore.toString(),
//                             style: TextStyle(
//                               fontSize: 18.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                         Text("  "),
//                         Text("Overs ",
//                           style: TextStyle(
//                             fontSize: 18.0,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                         Expanded(
//                           flex: 4,
//                           child: Text(
//                             (oversa.toString()),
//                             style: TextStyle(
//                               fontSize: 18.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 10.0),
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Icon(Icons.assignment_ind, color: Colors.green),
//                         Expanded(
//                           child: Text(
//                             teamBName,
//                             style: TextStyle(
//                               fontSize: 18.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                         Text("  "),
//                         Expanded(
//                           child: Text(
//                             teamBScore.toString(),
//                             style: TextStyle(
//                               fontSize: 18.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                         Text("  "),
//                         Text("Overs ",
//                           style: TextStyle(
//                             fontSize: 18.0,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                         Expanded(
//                           flex: 4,
//                           child: Text(
//                             (oversb.toString()),
//                             style: TextStyle(
//                               fontSize: 18.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class DataCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("New Text"),
    );
  }
}
