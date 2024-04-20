import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:abybaby_it/project_details.dart';
import 'package:list_wheel_scroll_view_nls/list_wheel_scroll_view_nls.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final player = AudioPlayer();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await player.setSource(
        AssetSource("assets/music/ringtone-fav-49109.mp3"),
      );
      await player.resume();
    });
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await player.dispose();
    });
  }

  List project = [
    {
      "project_name": "Krishi Vikas App",
      "project_id": 1,
      "project_image": "assets/KVAPP.png",
      "discription": "Farmer’s best friend! "
    },
    {
      "project_name": "PMS App",
      "project_id": 2,
      "project_image":
          "assets/Health Video in Beige Peach Sky Blue Simple Vibrant Minimalism Style.png",
      "discription": "A platform for the task titans to manage projects. "
    },
    {
      "project_name": "Abybaby Events App",
      "project_id": 3,
      "project_image":
          "assets/Health Video in Beige Peach Sky Blue Simple Vibrant Minimalism Style (1).png",
      "discription": "Where chaos meets coordination! "
    },
    {
      "project_name": "Fleet Edge App",
      "project_id": 4,
      "project_image": "assets/tata fleet edge.png",
      "discription": " Fun trivia adventure with quiz quest! "
    },
    {
      "project_name": "Mahindra Lmm Website",
      "project_id": 5,
      "project_image": "assets/mahindra lmm.png",
      "discription": "Last Mile Mobility"
    },
    {
      "project_name": "Abybaby Website",
      "project_id": 6,
      "project_image": "assets/abybaby-web.png",
      "discription": "Company Portfolio Website"
    },
    {
      "project_name": "Car News Club",
      "project_id": 7,
      "project_image": "assets/carnewsclub.png",
      "discription": "Blog Website"
    },
    {
      "project_name": "Simple Sciencw",
      "project_id": 8,
      "project_image": "assets/simple science.png",
      "discription": "Educational Website"
    },
  ];
  // final ScrollController _scrollController = ScrollController();

  // _scrollToBottom() {
  //   _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
  // }

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom());
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/DPL_krishi_vikash.jpg"),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Center(
        child: SizedBox(
            height: 500,
            child: RotatedBox(
              quarterTurns: 3,
              child: ListWheelScrollView.useDelegate(
                // controller: _scrollController,
                renderChildrenOutsideViewport: false,
                diameterRatio: RenderListWheelViewport.defaultDiameterRatio,
                itemExtent: 700,
                // offAxisFraction: 1,
                squeeze: 1,
                physics: const FixedExtentScrollPhysics(),
                useMagnifier: false,
                magnification: 1,
                overAndUnderCenterOpacity: 1,
                clipBehavior: Clip.hardEdge,
                childDelegate: ListWheelChildListDelegate(
                  children: List.generate(
                    project.length,
                    (index) => InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProjectDetailsPage(
                              ds: project[index],
                            ),
                          ),
                        );
                      },
                      child: RotatedBox(
                          quarterTurns: 1,
                          child: Image.asset(project[index]["project_image"])),
                    ),
                  ),
                ),
              ),
            )

            // ListWheelScrollViewX(
            //     // renderChildrenOutsideViewport: false,
            //     // useMagnifier: true,

            //     clipBehavior: Clip.none,
            //     onSelectedItemChanged: (value) {
            //       log("${value}");
            //     },
            //     // controller: _scrollController,
            //     scrollDirection: Axis.horizontal,
            //     itemExtent: 700,
            //     children: List.generate(
            //         project.length,
            //         (index) => InkWell(
            //             onTap: () {
            //               Navigator.push(
            //                 context,
            //                 MaterialPageRoute(
            //                   builder: (context) => ProjectDetailsPage(
            //                     ds: project[index],
            //                   ),
            //                 ),
            //               );
            //             },
            //             child: Image.asset(project[index]["project_image"]),),),),

            ),
      ),
    )

        //  Container(
        //   margin: const EdgeInsets.symmetric(horizontal: 15),
        //   alignment: Alignment.center,
        //   child: GridView.count(
        //     padding: const EdgeInsets.all(30),
        //     crossAxisCount: 2,
        //     childAspectRatio: (900 / 500),
        //     shrinkWrap: true,
        //     children: List.generate(
        //       project.length,
        //       (index) {
        //         return InkWell(
        //           onTap: () {
        //             Navigator.push(
        //               context,
        //               MaterialPageRoute(
        //                 builder: (context) => ProjectDetailsPage(
        //                   ds: project[index],
        //                 ),
        //               ),
        //             );
        //           },
        //           child: Padding(
        //             padding: const EdgeInsets.all(10.0),
        //             child: Stack(
        //               children: [
        //                 Container(
        //                   height: 500,
        //                   decoration: BoxDecoration(
        //                     image: DecorationImage(
        //                         image:
        //                             AssetImage(project[index]["project_image"]),
        //                         fit: BoxFit.fitWidth),
        //                     border: Border.all(
        //                       width: 4,
        //                       color: (project[index]["project_status"] == 1)
        //                           ? Colors.green
        //                           : Colors.grey,
        //                     ),
        //                     borderRadius: const BorderRadius.all(
        //                       Radius.circular(10),
        //                     ),
        //                   ),
        //                   child: Align(
        //                     alignment: Alignment.bottomRight,
        //                     child: Container(
        //                       height: fullHeight(context) / 20,
        //                       width: fullWidth(context) / 20,
        //                       decoration: const BoxDecoration(
        //                         borderRadius: BorderRadius.only(
        //                             bottomRight: Radius.circular(5)),
        //                         gradient: LinearGradient(
        //                             colors: [
        //                               Color(0xFF3366FF),
        //                               Color(0xFF00CCFF),
        //                             ],
        //                             begin: FractionalOffset(0.0, 0.0),
        //                             end: FractionalOffset(1.0, 0.0),
        //                             stops: [0.0, 1.0],
        //                             tileMode: TileMode.clamp),
        //                       ),
        //                       child: const FittedBox(
        //                         child: Padding(
        //                           padding: EdgeInsets.all(8.0),
        //                           child: Text(
        //                             "Click Now",
        //                             style: TextStyle(color: Colors.white),
        //                           ),
        //                         ),
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //                 if (project[index]["project_status"] == 1)
        //                   Positioned(
        //                     top: 0,
        //                     right: 0,
        //                     child: Container(
        //                       decoration: const BoxDecoration(
        //                           color: Colors.green, shape: BoxShape.circle),
        //                       height: 30,
        //                       width: 30,
        //                       child: const Center(
        //                         child: Icon(
        //                           Icons.done,
        //                           color: Colors.white,
        //                           size: 15,
        //                         ),
        //                       ),
        //                     ),
        //                   ),
        //               ],
        //             ),
        //           ),
        //         );
        //       },
        //     ),
        //   ),
        // ),

        );
  }
}
