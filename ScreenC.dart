import 'package:cricbuzz/CardLayout.dart';
import 'package:cricbuzz/CardLayout2.dart';
import 'package:cricbuzz/CardLayout3.dart';
import 'package:flutter/material.dart';
class ScreenC extends StatefulWidget {
  const ScreenC({super.key});

  @override
  State<ScreenC> createState() => _ScreenCState();
}

class _ScreenCState extends State<ScreenC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Container(
            child: SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                      height: 200,
                      child: CardLayout(teamAName: 'IND',teamAScore: 280,oversa: 60,teamBName: 'ENG',teamBScore: 146,oversb: 69)),
                  Container(
                      height: 200,
                      child: CardLayout2(teamAName: 'AUS',teamAScore: 170,oversa: 20,teamBName: 'NZ',teamBScore: 171,oversb: 19)),
                  Container(
                      height: 200,
                      child: CardLayout3(teamAName: 'SL',teamAScore: 294,oversa: 50,teamBName: 'BAN',teamBScore: 296,oversb: 49)),
                  Container(
                      height: 200,
                      child: CardLayout3(teamAName: 'SL',teamAScore: 294,oversa: 50,teamBName: 'BAN',teamBScore: 296,oversb: 49)),
                  Container(
                      height: 200,
                      child: CardLayout3(teamAName: 'SL',teamAScore: 294,oversa: 50,teamBName: 'BAN',teamBScore: 296,oversb: 49)),
                  Container(
                      height: 200,
                      child: CardLayout3(teamAName: 'SL',teamAScore: 294,oversa: 50,teamBName: 'BAN',teamBScore: 296,oversb: 49)),
                  Container(
                      height: 200,
                      child: CardLayout3(teamAName: 'SL',teamAScore: 294,oversa: 50,teamBName: 'BAN',teamBScore: 296,oversb: 49)),
               ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
