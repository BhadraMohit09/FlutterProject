import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ToBeDone.dart';
class CardLayout extends StatelessWidget {
  final String teamAName;
  final int teamAScore;
  final int oversa;
  final String teamBName;
  final int teamBScore;
  final int oversb;
  CardLayout({
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
                                 'England tour of India',
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
                               child: teamimageindia(),
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
                               child: teamimageengland(),
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
                           height: 32,
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

  Image teamimageengland() => Image.network('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAN4AAACUCAMAAADLemePAAAASFBMVEX////MAAHMAADs7Ozw0NDGEAz+/vvJEA/IAADu0dHv3dzPAAPEOTTMBQXd3d3t8PDjw8LktbPkz87HMS3mq6rNMS3VAADINzRL4K7TAAACRUlEQVR4nO3dDU/CMBSF4faOsWItm6jw//+p3SDqaI0mlzPTm/MmxIWPlcdRTdYA7thhG08XSdV8mEbw4EfXOXBPzz6JF/m8XDdC5h3QY3fb8HxZiFZ4MUqZHZ7kg1XwvBle5aXpyXtA5GkjDxZ52siDRZ428mCRp408WORpM88T2zzjR488UJx72swfPfJAce5pM3/0yAPFuafN/NEjDxR52siDRZ428mCRp408WORpIw8WedrIg0WeNvJgkact86Q8FWiIJykVvs14e2wLL5Q8iRJ2Djx450b0bzDzYihfnOJD5oEb3bTDdnh59RXe/M6U8HYADz65Yej7AVkfQ4zl1Esheui4i8tJ9T0iDyz/DfGVRZSUr0cOuwwpbnl3Vu0/k4EkLrz/fhqoyGs58lqOvJYjr+XIaznyWo68liOv5chrOfs8v/qgn/UH/vz1hl+urJzlnMde3Uk5WO2GPEZ0jzz3Vq/OE/B5wOsJTjf06CRWXv2SJAb40MMGJ+HfqwcwhfMWJ+E3WEIJXu558wLKGb8ANrpuXoTKW8tlf7s6b+yvP9cb+9ud1xtfD/q2m8+NeQGs8uKcF8AOrtjfj7upPJvy0fe74eqsNvtr67Z5fA8RKPK0medx7oEiT5t5HuceKPK0medx7oEiT5t5HuceKPK0kQeLPG3kwSJPG3mwyNNGHizytJEHizxt5MEiT5t5Hs+UgSJPm3ke5x4o8rSZ53HugSJPm3ke5x4o8rTVv05+qy8kP3bYxtMlpmo+TCN48OMHrENeUB2sFoMAAAAASUVORK5CYII=', height: 25, width: 20);

  Image teamimageindia() => Image.network('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAN0AAACUCAMAAAAgTdyMAAAAk1BMVEXxWyUAaTT////wRAAAVgD60crL1MssLG8jI2vd3eXQ0NsYGGfw8PT8/P0AAFjz8/bn5+0fH2qrq7+KiqgnJ20AAGANDWTFxdO/v84SEmVZWYiSkq64uMmCgqOxscRNTX16ep1iYo49PXcyMnJxcZefn7d4eJZERHwAAFKCgptpaYtCQnVcXIOXl640NG4yMmQqKmYmata4AAAD3klEQVR4nO2ai46bOBRAU7e7foDBBoIJNhjybEKYzv9/3RrSaqru7I5UrbOydY/EEMFI9pGvuX5tNgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMB/yueY2fwRMxsUM8+y44IaPYztOGhDBX9Sqc+xS01pt9s6kVIm9XZ7KU36lHKfYZcXY1KTKqlklmXS3cluNxb5E0p+gp3aE4lJJgd5Z5Td3T0jWJK98l+0d7v8mFWyIla4nymiKHVtJiypJM6O3pvPtx1tayxtUfSILZ+Sxl2cob4orMR1Sz2X7tmO2QRXHV3ExKJychd1zYg47SqcTMxv8X7tBJbVNjNo7WLaXd33u3tisq0LT+G1fK92Yk/IYUlu6RKRi1n7/b5kBC4OhOy96vm0y4+7yrI1s52cRO8UX1zX6532EqEoZbbaef20+LQrElx3SCxhKTqO6BmhbwidKeLd0mJKoK7GSeGxBh7tUlztWld36hoLFQblNnd2y1+zGPXuK1O0u6ryOGzxaDfU5LL+aFwc0lHwseGvvBm5GJ3YqVnfXUg9+KuCP7v8K5YsXRummDmaO1TO4lXMJepmxOc1INOcSfzVX8/zZ6d3pHW1bxa/+ZoLrFTLXlWrFBb5dXZPU8XytCU77a0O3uz4pZJb4bK2dq3Ez7dUTywxLyZhk05vZ5cmCu2yvNjK6uJtQuTNTh3kY6DFi0khPlpB9NBMzaCJsPccqalYpWhLDt7G097sdJJo9OhR4n5hdLTqps1k9E3ZkbLL/ZHG88c/esKXHR8SbHLKFHMWvCdHc72edNM2+nS9miPpXcMJ95bmBieDr9D0ZSdGiY2LO2bKm1YpLSfdl2W7b8uyn6eS5kqfS8Nc7BosR1/DMV921JLktgQmT4V+IVPJTqOWBBOpxxMrp+qlpOnSZPktIdbXTMiXHduTy9sghHZ2X7IML2Ss3NvuzSe9kL2viZA3uwOxbkrHlDF9Meu5KE5HudrJ46lYn/TGuH4nkCUHsPsdIDJ/h7i/KnFnhB/ZvPnXbN4Ems3jHom5UTT5aRSdj5YSfYxmFP3eDEhGMwN6d/aq3mavPOjZ60crD481v2BXHj5aNTLru1BXjSJf8Yt7tTbylfZfdkmW/hXRLknkO1wf7k7aoHcnI99Zdp+W4R9OBVQRnApAv5zooGNUJzrQe6dx6iSa0zjobyepbEwnqRZiPgX3f7H5M2Y2X2Jm8ylmwC5cwC5cwC5cwC5cwC5cwC5cwC5cwC5cwC5cwC5cwC5cwC5cwC5cwC5cwC5cwC5cwC5cwC5cwC5cwC5cwC5cwC5cwC5c4rb7C4H+8Q/k21IlAAAAAElFTkSuQmCC', height: 25, width: 20,);
}
