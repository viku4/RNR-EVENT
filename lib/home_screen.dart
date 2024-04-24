import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:abybaby_it/project_details.dart';

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
      "discription": "Farmer's best friend! "
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
      "project_name": "Simple Science",
      "project_id": 8,
      "project_image": "assets/simple science.png",
      "discription": "Educational Website"
    },
  ];

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
                    project.length * 50,
                    (index) => InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProjectDetailsPage(
                              ds: project[index % project.length],
                            ),
                          ),
                        );
                      },
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: 
                        
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15)   ,
                          child: Image.asset(
                              project[index % project.length]["project_image"]),
                        ),
                      
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
