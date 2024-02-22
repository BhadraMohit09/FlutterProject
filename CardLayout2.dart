import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cricbuzz/ToBeDone.dart';
class CardLayout2 extends StatelessWidget {
  final String teamAName;
  final int teamAScore;
  final int oversa;
  final String teamBName;
  final int teamBScore;
  final int oversb;
  CardLayout2({
    super.key,
    required this.teamAName,
    required this.teamAScore,
    required this.oversa,
    required this.teamBName,
    required this.teamBScore,
    required this.oversb,

  }
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0,5.0,10.0,5.0),
      child: SizedBox(
        width: 450,
        height: 250,
        child: Container(
          child: Card(
            color: Colors.white,
            elevation: 7.0,
            shadowColor: Colors.white,
            shape: BeveledRectangleBorder(side: BorderSide(width: 0.02)),
            // margin: EdgeInsets.symmetric(horizontal: 450.0, vertical: 8.0),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0.0, 15.0, 5.0, 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    alignment: FractionalOffset.topLeft,
                    child: Row(
                      children: [
                        Text(
                          'Australia tour of New Zealand',
                          style: GoogleFonts.alfaSlabOne(color: Colors.black54),
                        ),
                        Icon(Icons.notification_add, color: Colors.blueGrey),
                      ],
                    ),
                  ),
                  Divider(thickness: 0.9,indent: 0.0,color: Colors.blueGrey),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0,0.0,5.0,0.0),
                        child: teamimageaus(),
                      ),
                      Expanded(
                        child: Text(
                          teamAName,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text("  "),
                      Expanded(
                        child: Text(
                          teamAScore.toString(),
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text("  "),
                      Text("Overs ",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          (oversa.toString()),
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0,0.0,5.0,0.0),
                        child: teamimagenz(),
                      ),
                      Expanded(
                        child: Text(
                          teamBName,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text("  "),
                      Expanded(
                        child: Text(
                          teamBScore.toString(),
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text("  "),
                      Text("Overs ",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          (oversb.toString()),
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    height: 30,
                    width: 750,
                    padding: EdgeInsets.fromLTRB(15.0, 4.0, 15.0, 8.0),
                    child: OutlinedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ToBeDone(),));
                    }, child: Text("More",
                      style: TextStyle(
                          color: Colors.black54
                      ),
                    ),
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white38),padding: MaterialStatePropertyAll(EdgeInsets.all(2.0))),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Image teamimagenz() => Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQY_mq7B5WESjfNzkwy2roSgsorYnbryXI8w&usqp=CAU', height: 25, width: 20);

  Image teamimageaus() => Image.network('data:image/png;base64,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', height: 30, width: 20,);
}
