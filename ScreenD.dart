import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ScreenD extends StatefulWidget {
  const ScreenD({super.key});

  @override
  State<ScreenD> createState() => _ScreenDState();
}

class _ScreenDState extends State<ScreenD> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: SizedBox(
                height: 750,
                child: Container(
                  child: Card(
                    elevation: 5,
                    child: Column(
                      children: [
                        Center(
                          child: ClipOval(
                            child: Image.network(
                              'data:image/webp;base64,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aW5uYXN3YW15IFN0YWRpdW0gb24gTm92ZW1iZXIgMDgsIDIwMjMgaW4gQmVuZ2FsdXJ1LCBJbmRpYS4gKFBob3RvIGJ5IE1hdHQgUm9iZXJ0cy1JQ0MvSUNDIHZpYSBHZXR0eSBJbWFnZXMpMjAyMyBJQ0MsAQAAAQAAACwBAAABAAAAWE1QIEUGAABodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+Cjx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iPgoJPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KCQk8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczpwaG90b3Nob3A9Imh0dHA6Ly9ucy5hZG9iZS5jb20vcGhvdG9zaG9wLzEuMC8iIHhtbG5zOklwdGM0eG1wQ29yZT0iaHR0cDovL2lwdGMub3JnL3N0ZC9JcHRjNHhtcENvcmUvMS4wL3htbG5zLyIgICB4bWxuczpHZXR0eUltYWdlc0dJRlQ9Imh0dHA6Ly94bXAuZ2V0dHlpbWFnZXMuY29tL2dpZnQvMS4wLyIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIiB4bWxuczpwbHVzPSJodHRwOi8vbnMudXNlcGx1cy5vcmcvbGRmL3htcC8xLjAvIiAgeG1sbnM6aXB0Y0V4dD0iaHR0cDovL2lwdGMub3JnL3N0ZC9JcHRjNHhtcEV4dC8yMDA4LTAyLTI5LyIgeG1sbnM6eG1wUmlnaHRzPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvcmlnaHRzLyIgZGM6UmlnaHRzPSIyMDIzIElDQyIgcGhvdG9zaG9wOkNyZWRpdD0iSUNDIHZpYSBHZXR0eSBJbWFnZXMiIEdldHR5SW1hZ2VzR0lGVDpBc3NldElEPSIxNzgxNDI5NDQ0IiB4bXBSaWdodHM6V2ViU3RhdGVtZW50PSJodHRwczovL3d3dy5nZXR0eWltYWdlcy5jb20vZXVsYT91dG1fbWVkaXVtPW9yZ2FuaWMmYW1wO3V0bV9zb3VyY2U9Z29vZ2xlJmFtcDt1dG1fY2FtcGFpZ249aXB0Y3VybCIgPgo8ZGM6Y3JlYXRvcj48cmRmOlNlcT48cmRmOmxpPk1hdHQgUm9iZXJ0cy1JQ0M8L3JkZjpsaT48L3JkZjpTZXE+PC9kYzpjcmVhdG9yPjxkYzpkZXNjcmlwdGlvbj48cmRmOkFsdD48cmRmOmxpIHhtbDpsYW5nPSJ4LWRlZmF1bHQiPkJFTkdBTFVSVSwgSU5ESUEgLSBOT1ZFTUJFUiAwODogTmV3IFplYWxhbmQgY2FwdGFpbiBLYW5lIFdpbGxpYW1zb24gc3BlYWtzIGR1cmluZyBhIHByZXNzIGNvbmZlcmVuY2UgcHJpb3IgdG8gdGhlIENDIE1lbiZhcG9zO3MgQ3JpY2tldCBXb3JsZCBOZXcgWmVhbGFuZCAmYW1wOyBTcmkgTGFua2EgTmV0IFNlc3Npb25zIGF0IE0uIENoaW5uYXN3YW15IFN0YWRpdW0gb24gTm92ZW1iZXIgMDgsIDIwMjMgaW4gQmVuZ2FsdXJ1LCBJbmRpYS4gKFBob3RvIGJ5IE1hdHQgUm9iZXJ0cy1JQ0MvSUNDIHZpYSBHZXR0eSBJbWFnZXMpPC9yZGY6bGk+PC9yZGY6QWx0PjwvZGM6ZGVzY3JpcHRpb24+CjxwbHVzOkxpY2Vuc29yPjxyZGY6U2VxPjxyZGY6bGkgcmRmOnBhcnNlVHlwZT0nUmVzb3VyY2UnPjxwbHVzOkxpY2Vuc29yVVJMPmh0dHBzOi8vd3d3LmdldHR5aW1hZ2VzLmNvbS9kZXRhaWwvMTc4MTQyOTQ0ND91dG1fbWVkaXVtPW9yZ2FuaWMmYW1wO3V0bV9zb3VyY2U9Z29vZ2xlJmFtcDt1dG1fY2FtcGFpZ249aXB0Y3VybDwvcGx1czpMaWNlbnNvclVSTD48L3JkZjpsaT48L3JkZjpTZXE+PC9wbHVzOkxpY2Vuc29yPgoJCTwvcmRmOkRlc2NyaXB0aW9uPgoJPC9yZGY6UkRGPgo8L3g6eG1wbWV0YT4KPD94cGFja2V0IGVuZD0idyI/PgoA',
                              height: 170,
                              width: 170 ,
                            ),
                          ),
                        ),
                        Center(child: Text("Kane Williamson",
                          style: GoogleFonts.alegreya(fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Center(child: Text("New Zealand")),
                        Container(
                          color: Colors.grey,
                          child: SizedBox(
                            height: 22,
                            width: MediaQuery.of(context).size.width,
                            child: Text("Personal Info",
                            style: GoogleFonts.headlandOne(fontSize: 18,color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          child: SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                          flex: 2,
                                          child: Text("Born",
                                          style: GoogleFonts.varela(fontSize: 14, fontWeight: FontWeight.w800
                                          ),
                                          )),
                                      Expanded(
                                          flex: 2,
                                          child: Text("Aug 08 1990(33 yrs)")),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Divider(
                                      height: 10,
                                      indent: 10,
                                      thickness: 2,
                                      endIndent: 10,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          flex: 2,
                                          child: Text("Birth Place",
                                            style: GoogleFonts.varela(fontSize: 14, fontWeight: FontWeight.w800
                                            ),
                                          )),
                                      Expanded(
                                          flex: 2,
                                          child: Text("Tauranga (NZ)")),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Divider(
                                      height: 10,
                                      indent: 10,
                                      thickness: 2,
                                      endIndent: 10,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          flex: 2,
                                          child: Text("NickName",
                                            style: GoogleFonts.varela(fontSize: 14, fontWeight: FontWeight.w800
                                            ),
                                          )),
                                      Expanded(
                                          flex: 2,
                                          child: Text("----")),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Divider(
                                      height: 10,
                                      indent: 10,
                                      thickness: 2,
                                      endIndent: 10,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          flex: 2,
                                          child: Text("Batting Style",
                                            style: GoogleFonts.varela(fontSize: 14, fontWeight: FontWeight.w800
                                            ),
                                          )),
                                      Expanded(
                                          flex: 2,
                                          child: Text("Right Handed Bat")),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Divider(
                                      height: 10,
                                      indent: 10,
                                      thickness: 2,
                                      endIndent: 10,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          flex: 2,
                                          child: Text("Bowling Style",
                                            style: GoogleFonts.varela(fontSize: 14, fontWeight: FontWeight.w800
                                            ),
                                          )),
                                      Expanded(
                                          flex: 2,
                                          child: Text("No data available")),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.0,3.0,0.0,3.0),
                          child: Container(
                            color: Colors.grey,
                            child: SizedBox(
                              height: 22,
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                children: [
                                  Expanded(
                                      flex : 1,
                                      child: Text(" ",
                                  style: GoogleFonts.jacquesFrancois(color: Colors.white))),
                                  Expanded(
                                      flex: 2,
                                      child: Text("Matches",
                                      style: GoogleFonts.jacquesFrancois(color: Colors.white),)),
                                  Expanded(
                                      child: Text("Inns",
                                          style: GoogleFonts.jacquesFrancois(color: Colors.white))),
                                  Expanded(
                                      child: Text("Runs",
                                          style: GoogleFonts.jacquesFrancois(color: Colors.white))),
                                  Expanded(
                                      child: Text("HS",
                                          style: GoogleFonts.jacquesFrancois(color: Colors.white))),
                                  Expanded(
                                      child: Text("Avg",
                                          style: GoogleFonts.jacquesFrancois(color: Colors.white))),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(child: Text("Tests")),
                                  Expanded(
                                      flex: 2,
                                      child: Text("190")),
                                  Expanded(child: Text("264")),
                                  Expanded(child: Text("8769")),
                                  Expanded(child: Text("251")),
                                  Expanded(child: Text("47.60")),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(child: Text("ODI")),
                                  Expanded(
                                      flex: 2,
                                      child: Text("165")),
                                  Expanded(child: Text("154")),
                                  Expanded(child: Text("8200")),
                                  Expanded(child: Text("126")),
                                  Expanded(child: Text("45.60")),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(child: Text("T20I")),
                                  Expanded(
                                      flex: 2,
                                      child: Text("89")),
                                  Expanded(child: Text("80")),
                                  Expanded(child: Text("6042")),
                                  Expanded(child: Text("79")),
                                  Expanded(child: Text("37.60")),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(child: Text("IPL")),
                                  Expanded(
                                      flex: 2,
                                      child: Text("77")),
                                  Expanded(child: Text("755")),
                                  Expanded(child: Text("2011")),
                                  Expanded(child: Text("89")),
                                  Expanded(child: Text("32.75")),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(child: Text("1st Class")),
                                  Expanded(
                                      flex: 2,
                                      child: Text("189")),
                                  Expanded(child: Text("233")),
                                  Expanded(child: Text("5666")),
                                  Expanded(child: Text("278")),
                                  Expanded(child: Text("59.87")),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
