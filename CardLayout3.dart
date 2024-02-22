import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cricbuzz/ToBeDone.dart';
class CardLayout3 extends StatelessWidget {
  final String teamAName;
  final int teamAScore;
  final int oversa;
  final String teamBName;
  final int teamBScore;
  final int oversb;
  CardLayout3({
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
                          'Bangladesh v/s SriLanka',
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
                        child: teamimagesl(),
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
                        child: teamimageban(),
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

  Image teamimagesl() => Image.network('data:image/jpeg;base64,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', height: 25, width: 20);

  Image teamimageban() => Image.network('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASIAAACuCAMAAAClZfCTAAAAe1BMVEUAak70KkEAbU/7JkD4KEEAbk/6J0H+JEAAaU7YNUN0V0rIPESLUUjBP0VpWUraNEPtLEGpR0bQOUQqZU2PUEi3QkXjMELoLkKlSEefSkceZU1iW0tRX0u9QEVVXktuWEpCYUyEUkl8VUmXT0icTkhGYEymSEevRUZgW0uxzhtoAAADw0lEQVR4nO3d23aiMBQGYNmJRBQV0VJF7Xnavv8TTlCpbaeztgeSdMP/XXlp/pVsAoSk1wMAAAAAAAAAAAAAAAAAAAD4gir9vd3v0H/oV7F5lOt0Nk6KTCujdFYk41m6LpHTjk1hvcozo1SstY727K9YKZPlq3Wv4zERzRcjbeI6mu90bHS+mHc3JRqkiVL/i+cjJqWStOxkSLTZxmw+dUrx9q5zIdF9Yk7L55CSSe47FVJ/UpwV0D6kYtIP/cd9oYfzetAxpOmfTvQkGtxcFNA+pJtB+0OiYRRfGFAljoatz2hsrgioYsaD0G1wiTbZNV3o0JGyTXs7Uj+9uAp9pk3a1ksb3Vw7yGpm29J+lKuGEooilYRujAuD4voydBQX7Sva5W0TZehI35ahm9SwphOyGWXtymhQNJ1Q1Y/aNNZo2nxCNqNpe65rNGqyUh/Fo7Zk1F82NR/6zry2Yw5J964Sshm14znb3EUdqul56OY1wE2p/oioBSWbVs3ddvxErcRn9OA2IZvRQ+gmXsntMKtIH2r06O5qVjOPsjNyHlAldCOvQTM30+qv1KvgblS6rtWHjOTez9Kbj05k79XexHajgZ+EbEZSu5HrWeOR3Plj5imhKMpCN/VCQ/dzopoZhm7sRSh3PbE+0rnIkTb3VYkqSuJDEVp4jWghsBtR4m+c2ZGWCIzI08y6puS9VaMnzxE9ietGtPU5zuxIk7dYhPzNG/duxUU09zdv3DPiLvtDv6XIFiNpE2xa+rrLr8VLYSONRn6rta3X0l7wk4PVMkxEhbSIfFdrW4yERVT6j8gIm1/fBYjoLnSjzzPxfc23A20SutFn8X2HtotI1l0apQEiSmVF9BwgomdZEb0EiOgFEbUsIgw0Dso1Cxd9HqaOLNyAsHAby6IAA01WKcIjNR4ezLLweJ+Hl0QsvGpk4YU1C8seWFg8w8MSLBYW8rGwHJSHRcUsLE3n4QMHHj6T4Xj82ErW+6FP8MkeCx9+8vD5MMvPR+jxTG4n6mErAx42xOBhWxUeNudhYYsnnuONwiQ+J/oHtptjYdNCnsOtL5ft2PoSG6ieAtvw8rCZMw9bgvOwsTwPxxOcAIdcsHBUCg8H7vBwbNMpGjj8K3QTXMMRcjwcRHiCy4+zTLpxnGWlP5niUFQOTXC0Los2W40DmhlnHPPdjSL9ExwWfwrb/PdVnhmlYq3rqOyvWCmT5av3XsfzOSCicp3OxkmRRcoonRXJeJauS0I8X1Clv7f7HfoPAQAAAAAAAAAAAAAAAAAAgCh/AQzVR+UJST1GAAAAAElFTkSuQmCC', height: 30, width: 20,);
}
