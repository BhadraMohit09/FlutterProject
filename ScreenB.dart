import 'package:cricbuzz/ScreenD.dart';
import 'package:cricbuzz/ToBeDone.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ScreenB extends StatefulWidget {
  const ScreenB({super.key});

  @override
  State<ScreenB> createState() => _ScreenBState();
}

class _ScreenBState extends State<ScreenB> {
  bool showContent = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("ICC Men's Rankings",
        style: GoogleFonts.alegreya(
          color: Colors.white,
          fontSize: 20,
          letterSpacing: 3,
          fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0,25.0,0.0,12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 4,
                            shape: BeveledRectangleBorder(side: BorderSide(width: 1.5,color: Colors.teal))
                          ),
                          onPressed: () {
                            setState(() {
                              showContent != showContent;
                            });
                          },
                          child: Text("TEST", style: GoogleFonts.heptaSlab(color: Colors.black))
                      ),
                    ),
                  ),
                  if(showContent)...[
                    Text("Data A")
                  ],
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              elevation: 4,
                              shape: BeveledRectangleBorder(borderRadius: BorderRadiusDirectional.zero,side: BorderSide(color: Colors.teal,width: 1.5))
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ToBeDone(),
                                  )
                              );
                            },
                            child: Text("ODI", style: GoogleFonts.heptaSlab(color: Colors.black))
                        ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 4,
                                shape: BeveledRectangleBorder(borderRadius: BorderRadiusDirectional.zero,side: BorderSide(color: Colors.teal,width: 1.5))
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ToBeDone(),
                                  )
                              );
                            },
                            child: Text("T20", style: GoogleFonts.heptaSlab(color: Colors.black))
                        ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.teal,
              child: SizedBox(
                height: 22,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                        child: Text("Rank", style: GoogleFonts.heptaSlab(color: Colors.white),)),
                    Expanded(
                      flex: 4,
                        child: Text("Player", style: GoogleFonts.heptaSlab(color: Colors.white))),
                    Expanded(
                        child: Text("Points", style: GoogleFonts.heptaSlab(color: Colors.white))),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(2.0, 5.0, 0.0, 2.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Text("1", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black54))),
                  Expanded(
                      child: Text("--", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black54),)),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipOval(child: Image.network(
                        'data:image/jpeg;base64,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',
                        height: 40,
                        width: 40)),
                  ),
                  Expanded(
                      flex: 5,
                      child: GestureDetector(
                          onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenD(),
                              )
                            );
                          },
                          child: Text("Kane Williamson (NZ)", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.black54)
                          ),
                      ),
                  ),
                  Expanded(
                      child: Text("864", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black54)))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(2.0, 5.0, 0.0, 2.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Text("2", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black54))),
                  Expanded(
                      child: Text("--", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black54),)),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipOval(
                      child: Image.network(
                        'data:image/jpeg;base64,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',
                          height: 40,
                          width: 40),
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: GestureDetector(
                          onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ToBeDone(),
                              ),
                            );
                          },
                          child: Text("Steve Smith (AUS)",
                              style: GoogleFonts.alegreya(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black54)
                          )
                      ),
                  ),
                  Expanded(
                      child: Text("818", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black54)))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(2.0, 5.0, 0.0, 2.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Text("3", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black54))),
                  Expanded(
                      child: Text("--", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black54),)),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipOval(
                      child: Image.network(
                        'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAFwAXAMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAABwUGAgMECAH/xAA2EAACAQMCBAQDBwIHAAAAAAABAgMABBEFEgYhMUETUWGBB3GRIjJCobHB8BTRFSNDYsLh8f/EABoBAAIDAQEAAAAAAAAAAAAAAAAFAgMEAQb/xAAlEQADAAICAQMEAwAAAAAAAAAAAQIDEQQhMRIioQVRcYETMkH/2gAMAwEAAhEDEQA/AHjRRRQAUUVqu7mCztpbm6lSGCJS0kjnCqB1JNAH2eVIIZJpWCpGpZiewAyarVr8QOG7hEY34h3A5EyFdp8j2ye2PKl7x18SH1TxtL0oNDaPlWkYYeYdDkfhX8z38qoirdupeRsxg5dNoIwBgEfw9/Oqqya8F04t+T0/ZXdvfWsdzaTLLDIMq6nka31510TVtd4Yuv67T5GmtXOXh3ExyDlnI7H17U5+DuMNO4qt5Dah4buHHj2sv34/I+oPmPfB5VKbVELhyWOiiipkAooooAKKKKAClF8eNWnH+GaJCf8AKlzczrnG7acID6ZyfmBTdpX/ABT0yC44l0ee4QyJJH4RXthWz/zqGR6nZZiW7SFvp+h3F3amdQzBjkhQTkfvU9pvC+pXiIs2UijH2ARtx6+h/hpgaNZWtrCsVrAiIvTA6e9SMitnAxjtg0vdU0MlMpi0m4LvIY2f/EdpbnsCcj8/4Kr2k3d5wZxxZ38i4jMgjuCBgSROQG+nI/NRTenkQ5ieWIyDn4e4bgPlVP4os4r2AQmIOzEjp2P/AHXYyOaOZMc1A5h0r7WKDaijyGKypkKgooooAKKKKACqPxxFJLqULTOFjgQGAAD7RY/a9eWz86vFQ3EOkNqSpJE2JY1ZQCeRB/8AKryy6jSLsFTN7opl7ps19pjpBcxx7lOC8Yfn25Hlj2rPRIZNO02SEOTgEqCenPl+VdulNmBoGXDDkQexFY3CTN4qpbq25QFO/ABx35dPrS/b1oaJLZC6fpEz3Uk4udg3NuDRqd2cbeo5Y5/Os50iivAnihACMOR0bt+1TVjuhtw0gClV588860aLo41u+nec4t0K7xn73POPyoSdNJHKcym68F00R7mXSrWS+bdcPGGc4xkn0rur4BgAeVfaZrwJ29vYUUUV04FFFFABRRVT+IfGsHBmlC4MH9VdynEVuH25HdieeAMjt3rqTfgDhvDHZ63dRdBvyPXPP8s1zzaa0mX8SV1Y5G6Zhj6VwafdT8R6WL6/hSC6ulE2yMkCM45AHr0xWua11mNFWy1BNvdZk5/UUrevU9DnG6lI7XVLCCRC7kt3eQnHyzVq4NtxHo6zfincsfQA4H6Z96o9pp0jSePfztPIgzjooPyqzcCcQwXrXeiuBHd2DA7c58RGAbcPkWwfbzq7jLdv8Gflv2fsuFFFFbRcFFFFABWMkiRIXkZVUdWY4ApTcXfFC4aeex4dQRohKG8YbmfHdB0A9Tn5Cllf3t5fOZb24lncNljK5f8AWtuPg3S3XRRXIldLsfHEHxH0DSFZIpzf3A/0rTDAH1f7o+pPpSZ4r1i44p1Ke7vAEM8QSOINlYlHRQe/PJ9zUMWfBUkit8aubeNwPtJ05+Rrdi4mOE19yis1Np/YZXAeoLdaHAhyLi3URyKevLofpVjeUIpDClvwxPMryvaMBOqfcPSQeXt+/pTCtbu3ureKWVhE+PtxscFW7g15Tk4XhzVjf+HqcWSc2Ocq8MwuZo7a2aWXOPIdWPYClYup3dlro1OzmMV14hkDL+hHcY5Y8qvdxqEeo6vIIXVre22qm08ixzk/tS92Zm3eVNPo+P35Fa76+Rb9Wa/ix1L87+BwcLfE3TdRjWDWymnXo5MzZ8Fz5hvw/JvqavME8NxGJLeVJUPRkYMD7ivLV0QtwwVssxBA8v5isIJXhcywkow5h0O1vqKY3wJb9r0Kp5DXlHq2ikjwf8TdRsLuC316b+q05jsaZhmWH/cT+IeeeffPanYjq6K6MGVhkEcwRS/LhrE9M0xatdHmGJBj1rGaDBOPuvyxW5eRXHc1m3NZgfwbWHoc16B+BYn2S2o8M2cdpp80d2I/FVVkJDOJXPQoAue/fFRdwLbT4Gg8C+8dxuR7gCIL6hCCSPernqxRImgiijijgu4GVY125yQxz7ntiuXWr10gcRxxrmHfkZJB3Njqe2Pz55rBjy30n2a6iexeN/Wtlo76eKUdPCOzI9COdbtOKxwS7WkyXJd2Y7nJGMHnzx+9dFzbpHCsqFgSM4zyrCDAtt4A3NIfatTww6212UrLXp0n0aLeG6jmdbS9u4PGPIJOygKOpP7UwOB9C0q70ae4vtNurqYSGFZIjvO1lK5wWGDmT22g8sVTIOUNxJklz9jJ8uX96s/DV8LbRbxWs7WcCdHHjRlufiRY7+/tVPIxqY3PTbLMWSqeqe0iI410620/X7iGwtZLWBY90ccnXmT+hyOvaol4VU4TIQADOe/SpnX5UutXnYW8EAWbw9kK7QcSNzPrUWPtW9nn8Sux9Ty/uatxP2Tsrv8AszTIg2YAwAMADypy/CziOF+Eoba+lIks5GgUt3QAFfoGA9qUOAY9x6nNYW93cWyFYJWRWO4gHqajycKyToMV+l7P/9k=',
                      height: 40,
                      width: 40),
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: GestureDetector(
                          onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ToBeDone(),
                              ),
                            );
                          },
                          child: Text("Joe Root (ENG)", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.black54)
                          )
                      )
                  ),
                  Expanded(
                      child: Text("808", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black54)))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(2.0, 5.0, 0.0, 2.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Text("4", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black54))),
                  Expanded(
                      child: Text("--", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black54),)),
                  Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdtp8STWPis8UwJhKsG9zLuge-rSXJZj_mq4zJTt_KbOwIBi4xsjRR&usqp=CAE&s',
                  height: 40,
                  width: 40),
                  Expanded(
                      flex: 5,
                      child: GestureDetector(
                          onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ToBeDone(),
                              )
                            );
                          },
                          child: Text("Daryl Mitchell(NZ)", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.black54)
                          )
                      )
                  ),
                  Expanded(
                      child: Text("793", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black54)))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(2.0, 5.0, 0.0, 2.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Text("5", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black54))),
                  Expanded(
                      child: Text("--", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black54),)),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipOval(
                      child: Image.network(
                          'data:image/jpeg;base64,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',
                      height: 40,
                      width: 40),
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ToBeDone(),
                            )
                            );
                          },
                          child: Text("Babar Azam(PAK)", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.black54)))),
                  Expanded(
                      child: Text("747", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black54)))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(2.0, 5.0, 0.0, 2.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Text("6", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black54))),
                  Expanded(
                      child: Text("--", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black54),)),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipOval(
                      child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmtFWr2pCL4EerZLM641rPveoPlH4Oyo-m8ccksiD5Gkstf6Vy3gwd&usqp=CAE&s',
                          height: 40,
                          width: 40),
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ToBeDone(),
                            )
                            );
                          },
                          child: Text("Usman Khawaja(AUS)", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.black54)))),
                  Expanded(
                      child: Text("700", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black54)))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(2.0, 5.0, 0.0, 2.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Text("7", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black54))),
                  Expanded(
                      child: Text("--", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black54),)),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipOval(
                      child: Image.network(
                          'data:image/jpeg;base64,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',
                          height: 40,
                          width: 40),
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: GestureDetector(
                          onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ToBeDone(),
                              )
                            );
                          },
                          child: Text("Virat Kohli(IND)", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.black54)))),
                  Expanded(
                      child: Text("680", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black54)))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(2.0, 5.0, 0.0, 2.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Text("8", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black54))),
                  Expanded(
                      child: Text("--", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black54),)),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipOval(
                      child: Image.network(
                          'data:image/jpeg;base64,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',
                          height: 40,
                          width: 40),
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: GestureDetector(
                          onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ToBeDone(),
                              )
                            );
                          },
                          child: Text("Harry Brook(ENG)", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.black54)))),
                  Expanded(
                      child: Text("636", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black54)))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(2.0, 5.0, 0.0, 2.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Text("9", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black54))),
                  Expanded(
                      child: Text("--", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black54),)),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipOval(
                      child: Image.network(
                          'data:image/jpeg;base64,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',
                          height: 40,
                          width: 40),
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: GestureDetector(
                          onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ToBeDone(),
                              )
                            );
                          },
                          child: Text("D Karunaratne(SL)", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.black54)))),
                  Expanded(
                      child: Text("580", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black54)))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(2.0, 5.0, 0.0, 2.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Text("10", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black54))),
                  Expanded(
                      child: Text("--", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black54),)),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipOval(
                      child: Image.network(
                          'data:image/jpeg;base64,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',
                          height: 40,
                          width: 40),
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ToBeDone(),
                            )
                            );
                          },
                          child: Text("M Labuchagne(AUS)", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.black54)))),
                  Expanded(
                      child: Text("523", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black54)))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(2.0, 5.0, 0.0, 2.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Text("11", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black54))),
                  Expanded(
                      child: Text("--", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black54),)),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipOval(
                      child: Image.network(
                          'data:image/jpeg;base64,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',
                          height: 40,
                          width: 40),
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ToBeDone(),
                            )
                            );
                          },
                          child: Text("Travis Head(AUS)", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.black54)))),
                  Expanded(
                      child: Text("495", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black54)))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(2.0, 5.0, 0.0, 2.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Text("12", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black54))),
                  Expanded(
                      child: Text("--", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black54),)),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipOval(
                      child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPsTHXDvwzoSyT1Qzehj4ko_XtzByAxO0cjitp2fod31BSJGBbv9AQ&usqp=CAE&s',
                          height: 40,
                          width: 40),
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ToBeDone(),
                            )
                            );
                          },
                          child: Text("Rohit Sharma(IND)", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.black54)))),
                  Expanded(
                      child: Text("446", style: GoogleFonts.alegreya(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black54)))
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
