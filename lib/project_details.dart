import 'dart:math';
import 'package:flutter/material.dart';
import 'package:abybaby_it/widget.dart';
import 'package:abybaby_it/typing_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProjectDetailsPage extends StatefulWidget {
  final dynamic ds;
  const ProjectDetailsPage({super.key, this.ds});

  @override
  State<ProjectDetailsPage> createState() => _ProjectDetailsPageState();
}

class _ProjectDetailsPageState extends State<ProjectDetailsPage>
    with SingleTickerProviderStateMixin {
  // late Animation<double> _animation;
  // late AnimationController _animationController;

  final CarouselController _controller = CarouselController();
  int _currentIndex = 0;
  List photo = [];
  List workMonth = [];

  List work = [];
  bool loading = false;
  @override
  void initState() {
    super.initState();
    // _animationController = AnimationController(
    //   vsync: this,
    //   duration: const Duration(seconds: 5),
    // );
    // _animation = Tween<double>(
    //   begin: 0,
    //   end: 1,
    // ).animate(CurvedAnimation(
    //   parent: _animationController,
    //   curve: Curves.easeInOut,
    // ));
    // _animationController.forward();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        loading = true;
      });
      List krishiVikas = [
        "assets/pic/Mahi.jpeg",
        "assets/pic/Mahhin.jpeg",
        "assets/pic/profile.jpeg",
        "assets/pic/view.jpeg",
        "assets/pic/details.jpeg",
      ];
      List pms = [
        "assets/pic/login.png",
        "assets/pic/drawer2.png",
        "assets/pic/add.png",
        "assets/pic/list.png",
      ];
      List tata = [
        "assets/pic/tata1.jpeg",
        "assets/pic/tata2.jpeg",
        "assets/pic/tata3.jpeg",
        "assets/pic/tata4.jpeg",
        "assets/pic/tata5.jpeg",
        "assets/pic/tata6.jpeg",
      ];
      List event = [
        "assets/pic/event1.jpeg",
        "assets/pic/event2.jpeg",
        "assets/pic/event3.jpeg",
        "assets/pic/event4.jpeg",
        "assets/pic/event6.jpeg",
        "assets/pic/event7.jpeg",
        "assets/pic/event8.jpeg",
        "assets/pic/event9.jpeg",
        "assets/pic/event10.jpeg",
        "assets/pic/event11.jpeg",
        "assets/pic/event12.jpeg",
        "assets/pic/event13.jpeg",
      ];
      List carNews = [
        "assets/pic/car-news.png",
        "assets/pic/carnews-2.png",
      ];
      List abWeb = [
        "assets/pic/ab-1.png",
        "assets/pic/ab-2-removebg-preview.png",
      ];
      List lms = [
        "assets/pic/lms1.jpeg",
        "assets/pic/lms2.jpeg",
        "assets/pic/lms3.jpeg",
        "assets/pic/lms4.jpeg",
        "assets/pic/lms5.jpeg",
      ];
      List simple = [
        "assets/pic/WhatsApp Image 2024-03-29 at 18.03.50_1497f939.jpg",
        "assets/pic/WhatsApp Image 2024-03-29 at 18.03.49_7129de96.jpg",
        "assets/pic/Screenshot 2024-03-30 134815.png",
        "assets/pic/WhatsApp Image 2024-03-30 at 13.49.58_19d3d5ec.jpg",
      ];
      List krishiVikasWork = [
        {
          "name": "Subhabrata Paul",
          "position": "The Mastermind (Backend Developer)",
          "image": "assets/pic/subho.jpeg",
        },
        {
          "name": "Dibyendu Singha",
          "position": "The Chota Chetan ( Junior Backend developer)",
          "image": "assets/pic/dib.jpeg",
        },
        {
          "name": "Himangshu Majhi",
          "position": "Mastermind 2.0 (Backend Developer)",
          "image": "assets/pic/hima.jpeg",
        },
        {
          "name": "Soudeep Dutta",
          "position":
              "The Data DADA and “Bugs” Buster (Data Analytics / Tester)",
          "image": "assets/pic/sou.jpeg",
        },
        {
          "name": "Monjur Alam",
          "position": "The Code Khiladi (Frontend Web Devloper)",
          "image": "assets/pic/mon.jpeg",
        },
        {
          "name": "Vikash Srivastav",
          "position": "The Rangreza (Flutter Devloper)",
          "image": "assets/pic/vik.jpeg",
        },
        {
          "name": "Soumajit Das",
          "position": "The Flutter Master (Flutter Developer)",
          "image": "assets/pic/soum.jpeg",
        },
        {
          "name": "Deboraj Nath",
          "position": "The UX Ustaad (Flutter Devloper)",
          "image": "assets/pic/debo.jpeg",
        },
      ];
      List pmsWork = [
        {
          "name": "Subhabrata Paul",
          "position": "Backend Developer",
          "image": "assets/pic/subho.jpeg",
        },
        {
          "name": "Soudeep Dutta",
          "position": "Tester",
          "image": "assets/pic/sou.jpeg",
        },
        {
          "name": "Vikash Srivastav",
          "position": "Flutter Devloper",
          "image": "assets/pic/vik.jpeg",
        },
      ];
      List abybabyWebWork = [
        {
          "name": "Subhabrata Paul",
          "position": "Backend Developer",
          "image": "assets/pic/subho.jpeg",
        },
        {
          "name": "Soudeep Dutta",
          "position": "Tester",
          "image": "assets/pic/sou.jpeg",
        },
        {
          "name": "Monjur Alam",
          "position": "The Code Khiladi (Frontend Web Devloper)",
          "image": "assets/pic/mon.jpeg",
        },
      ];
      List carNewsWork = [
        {
          "name": "Himangshu Majhi",
          "position": "Mastermind 2.0 (Backend Developer)",
          "image": "assets/pic/hima.jpeg",
        },
        {
          "name": "Kajal Singh",
          "position": "Frontend Web Devloper(Intern)",
          "image": "assets/pic/kajal.jpeg",
        },
        {
          "name": "Monjur Alam",
          "position": "The Code Khiladi (Frontend Web Devloper)",
          "image": "assets/pic/mon.jpeg",
        },
      ];
      List tataWork = [
        {
          "name": "Subhabrata Paul",
          "position": "Backend Developer",
          "image": "assets/pic/subho.jpeg",
        },
        {
          "name": "Dibyendu Singha",
          "position": "Backend developer",
          "image": "assets/pic/dib.jpeg",
        },
        {
          "name": "Soudeep Dutta",
          "position": "Tester",
          "image": "assets/pic/sou.jpeg",
        },
        {
          "name": "Vikash Srivastav",
          "position": "Flutter Devloper",
          "image": "assets/pic/vik.jpeg",
        },
        {
          "name": "Soumajit Das",
          "position": "The Flutter Master (Flutter Developer)",
          "image": "assets/pic/soum.jpeg",
        },
        {
          "name": "Deboraj Nath",
          "position": "The Ui Design (Flutter Devloper)",
          "image": "assets/pic/debo.jpeg",
        },
      ];
      List eventWork = [
        {
          "name": "Subhabrata Paul",
          "position": "Meeting Chacha",
          "image": "assets/pic/subho.jpeg",
        },
        {
          "name": "Himangshu Majhi",
          "position": "Backend Developer",
          "image": "assets/pic/hima.jpeg",
        },
        {
          "name": "Soudeep Dutta",
          "position": "Data Analytics / Tester",
          "image": "assets/pic/sou.jpeg",
        },
        {
          "name": "Deboraj Nath",
          "position": "Flutter Devloper",
          "image": "assets/pic/debo.jpeg",
        },
      ];
      List lmmWork = [
        {
          "name": "Subhabrata Paul",
          "position": "Backend Developer",
          "image": "assets/pic/subho.jpeg",
        },
        {
          "name": "Dibyendu Singha",
          "position": "Junior Backend developer",
          "image": "assets/pic/dib.jpeg",
        },
        {
          "name": "Soudeep Dutta",
          "position":
              "The Data DADA and “Bugs” Buster (Data Analytics / Tester)",
          "image": "assets/pic/sou.jpeg",
        },
        {
          "name": "Monjur Alam",
          "position": "The Design Khiladi (Frontend Web Devloper)",
          "image": "assets/pic/mon.jpeg",
        },
      ];

      List simpleWork = [
        {
          "name": "Subhabrata Paul",
          "position": "Backend Developer",
          "image": "assets/pic/subho.jpeg",
        },
        {
          "name": "Dibyendu Singha",
          "position": "Junior Backend developer",
          "image": "assets/pic/dib.jpeg",
        },
        {
          "name": "Monjur Alam",
          "position": "The Design Khiladi (Frontend Web Devloper)",
          "image": "assets/pic/mon.jpeg",
        },
      ];

      List monthKrishivikas = [
        {
          "month": "Sep",
          "year": "2023",
          "id": "1",
          "data": [
            "Filter ",
            "Crop Calendar",
            "Wheater",
            "Update",
            "Update",
            "User Interface Change",
            "Git Setup",
            "Shimmer Add",
          ]
        },
        {
          "month": "Oct",
          "year": "2023",
          "id": "2",
          "data": [
            "Authication Otp Change ",
            "App Update",
            "Wheater",
            "Crop Calendar",
            "Home Screen Data Store",
          ]
        },
        {
          "month": "Nov",
          "year": "2023",
          "id": "3",
          "data": [
            "No internet Facility",
            "Php Upgrage",
            "Larawel Upgrade",
            "Api Security",
            "IOS - 17 upgrade",
          ]
        },
        {
          "month": "Dec",
          "year": "2023",
          "id": "4",
          "data": [
            "Banner-Ads",
            "Product-Boost",
            "Subsription Module",
            "Seller Dashboard",
            "Coupon System",
            "Database Design",
            "Registration Process Upgrade",
          ]
        },
        {
          "month": "Jan",
          "year": "2024",
          "id": "1",
          "data": [
            "Banner-Ads",
            "Product-Boost",
            "Razorpay",
            "Sms Service",
            "Cronjob",
            "Seller Dashboard",
            "Invoice Generate",
            "Database Design",
            "Recommend Product",
            "Registration Process Upgrade",
            "User Shop",
          ]
        },
        {
          "month": "Feb",
          "year": "2024",
          "id": "2",
          "data": [
            "Banner-Ads",
            "Product-Boost",
            "Cache",
            "Razorpay",
            "Sms Service",
            "Cronjob",
            "Notification",
            "Invoice Generate",
            "Recommend Product",
            "Lead Generate",
            "Posting Control System For User",
            "User Shop",
          ]
        },
        {
          "month": "Mar",
          "year": "2024",
          "id": "3",
          "data": [
            "Cronjob",
            "Notification",
            "S3 Bucket",
            "Lead Generate",
            "Language change",
            "Banner Clickable",
            "Posting Control System For User",
            "Bug Fixing",
            "Update"
          ]
        },
      ];
      List monthPms = [
        {
          "month": "Sep",
          "year": "2023",
          "id": "1",
          "data": [
            "Vendor Crud Opretion",
            "Payement Requisition",
            "Chat",
            "WEB ",
            "APP",
          ]
        },
        {
          "month": "Ost",
          "year": "2023",
          "id": "1",
          "data": [
            "Vendor Crud Opretion",
            "Payement Requisition",
            "Chat",
            "WEB ",
            "APP",
          ]
        },
      ];
      List monthEvent = [
        {
          "month": "Jan",
          "year": "2024",
          "id": "1",
          "data": [
            "Website development",
            "Admin Application Devlopmemt",
            "WEB ",
            "APP",
          ]
        },
        {
          "month": "Feb",
          "year": "2024",
          "id": "1",
          "data": [
            "Website development",
            "Admin Application Devlopmemt",
            "WEB ",
            "APP",
          ]
        },
        {
          "month": "Mar",
          "year": "2024",
          "id": "1",
          "data": [
            "Design Or Devlopment",
            "Api Devlopment",
            "Admil Panel",
            "User Panel",
            "WEB Application",
            "APP",
          ]
        },
      ];
      List monthTata = [
        {
          "month": "Nov",
          "year": "2023",
          "id": "1",
          "data": [
            "Api development",
            "Tab Application Devlopmemt",
          ]
        },
        {
          "month": "Dec",
          "year": "2023",
          "id": "1",
          "data": [
            "Api development",
            "Tab Application Devlopmemt",
          ]
        },
      ];
      List monthLmm = [
        {
          "month": "Nov",
          "year": "2023",
          "id": "1",
          "data": [
            "Software development",
          ]
        },
        {
          "month": "Dec",
          "year": "2023",
          "id": "1",
          "data": [
            "Software development",
          ]
        },
      ];
      List webAbyby = [
        {
          "month": "Sep",
          "year": "2023",
          "id": "1",
          "data": [
            "Index Page Redesign",
            "Dynamic Website",
            "Photo Upload System",
            "Responsive",
          ]
        },
        {
          "month": "Oct",
          "year": "2023",
          "id": "1",
          "data": [
            "Index Page Redesign",
            "Dynamic Website",
            "Photo Upload System",
            "Responsive",
          ]
        },
      ];
      List carNewWork = [
        {
          "month": "Jan",
          "year": "2024",
          "id": "1",
          "data": [
            "Frontend Design",
            "Backend Design",
            "Responsive",
          ]
        },
        {
          "month": "Feb",
          "year": "2024",
          "id": "1",
          "data": [
            "Frontend Design",
            "Backend Design",
            "Responsive",
          ]
        },
        {
          "month": "Mar",
          "year": "2024",
          "id": "1",
          "data": [
            "Frontend Design",
            "Backend Design",
            "Responsive",
          ]
        },
      ];

      List simpleScienceWork = [
        {
          "month": "Sep",
          "year": "2023",
          "id": "1",
          "data": [
            "Frontend Design",
            "Backend Design",
            "Responsive",
          ]
        },
        {
          "month": "Oct",
          "year": "2023",
          "id": "1",
          "data": [
            "Frontend Design",
            "Backend Design",
            "Responsive",
          ]
        },
        {
          "month": "Nov",
          "year": "2023",
          "id": "1",
          "data": [
            "Frontend Design",
            "Backend Design",
            "Responsive",
          ]
        },
      ];

      if (widget.ds["project_id"] == 1) {
        photo.addAll(krishiVikas);
        work.addAll(krishiVikasWork);
        workMonth.addAll(monthKrishivikas);
      } else if (widget.ds["project_id"] == 2) {
        photo.addAll(pms);
        work.addAll(pmsWork);
        workMonth.addAll(monthPms);
      } else if (widget.ds["project_id"] == 4) {
        photo.addAll(tata);
        work.addAll(tataWork);
        workMonth.addAll(monthTata);
      } else if (widget.ds["project_id"] == 3) {
        photo.addAll(event);
        work.addAll(eventWork);
        workMonth.addAll(monthEvent);
      } else if (widget.ds["project_id"] == 5) {
        photo.addAll(lms);
        work.addAll(lmmWork);
        workMonth.addAll(monthLmm);
      } else if (widget.ds["project_id"] == 6) {
        photo.addAll(abWeb);
        work.addAll(abybabyWebWork);
        workMonth.addAll(webAbyby);
      } else if (widget.ds["project_id"] == 7) {
        photo.addAll(carNews);
        work.addAll(carNewsWork);
        workMonth.addAll(carNewWork);
      } else if (widget.ds["project_id"] == 8) {
        photo.addAll(simple);
        work.addAll(simpleWork);
        workMonth.addAll(simpleScienceWork);
      }
      setState(() {
        loading = false;
      });
    });
  }

  @override
  void dispose() {
    // _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/DPL_krishi_vikash.jpg"),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: loading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: fullWidth(context) / 2.2,
                        height: fullHeight(context) / 1.8,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(widget.ds["project_image"]),
                              fit: BoxFit.fitWidth),
                          color: Colors.white.withOpacity(1),
                        ),
                      ),
                      widthSpace(20),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 5)),
                        // color: Colors.white,
                        width: fullWidth(context) / 2.2,
                        height: fullHeight(context) / 1.8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            buildTypeText(
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              txt: widget.ds["project_name"],
                            ),
                            buildTypeText(
                              txt: widget.ds["discription"],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int index = 0;
                                index < workMonth.length;
                                index++)
                              DelayedAnimation(
                                delay: Duration(milliseconds: 500 * index),
                                child: makeItem(
                                  month: workMonth[index]["month"],
                                  year: workMonth[index]["year"],
                                  data: workMonth[index]["data"],
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              "Contributions ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            width: fullWidth(context) / 1.5,
                            height: 350,
                            color: Colors.amber.shade50,
                            child: CarouselSlider.builder(
                              carouselController: _controller,
                              itemCount: work.length,
                              itemBuilder: (context, index, realIndex) =>
                                  InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: SizedBox(
                                          height: 200,
                                          width: 200,
                                          child: Image.asset(
                                            // alignment: Alignment.topCenter,
                                            work[index]["image"],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        width: 200,
                                        child: Text(
                                          work[index]["position"],
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        width: 150,
                                        child: Text(
                                          work[index]["name"],
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              options: CarouselOptions(
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    _currentIndex = index;
                                  });
                                },
                                initialPage: 0,
                                autoPlay: true,
                                reverse: false,
                                height: 180,
                                disableCenter: true,
                                autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                                scrollPhysics: const BouncingScrollPhysics(),
                                viewportFraction: 0.3,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: AnimatedSmoothIndicator(
                                onDotClicked: (index) {
                                  _controller.jumpToPage(index);
                                },
                                activeIndex: _currentIndex,
                                count: work.length,
                                effect: WormEffect(
                                  dotHeight: 15,
                                  dotWidth: 15,
                                  radius: 20,
                                  dotColor: Colors.pinkAccent.withOpacity(0.5),
                                  activeDotColor: Colors.black.withOpacity(0.8),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              "Screenshot",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: fullWidth(context) / 2,
                          height: 400,
                          color: Colors.amber.shade50,
                          alignment: Alignment.center,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: photo.length,
                            // controller: scrollController,
                            itemBuilder: (BuildContext context, int index) {
                              log(photo.length);
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height: 200,
                                  child: Image.asset(
                                    // alignment: Alignment.topCenter,
                                    photo[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
      ),
    );
  }
}

Widget makeItem({month, year, required List data}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 100,
          height: 150,
          margin: const EdgeInsets.symmetric(horizontal: 10)
              .copyWith(top: 0, right: 0),
          child: Card(
            color: Colors.pinkAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                buildTypeText(
                  txt: year.toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                buildTypeText(
                  txt: month.toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 0,
                ),
                width: 8,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
              ),
              Container(
                height: 150,
                width: 1100,
                alignment: Alignment.center,
                child: GridView.count(
                  padding: const EdgeInsets.all(10),
                  crossAxisCount: 4,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 10,
                  children: List.generate(
                    data.length,
                    (index) {
                      return ListTile(
                        title: buildTypeText(txt: data[index]),
                        leading: Container(
                          decoration: BoxDecoration(
                            color: Colors.pinkAccent,
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
                          width: 20,
                          height: 20,
                          child: const Center(
                            child:
                                Icon(Icons.done, size: 12, color: Colors.white),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

// Widget makeContriItem({image, position, name}) {
//   CarouselController _controller = CarouselController();
//   int _currentIndex = 0;
//   return Stack(
//     alignment: Alignment.bottomCenter,
//     children: [
//       CarouselSlider.builder(
//         carouselController: _controller,
//         itemCount: 4,
//         itemBuilder: (context, index, realIndex) => InkWell(
//             child: Container(
//           width: 200,
//           color: Colors.amber.shade50,
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   SizedBox(
//                     height: 150,
//                     width: 200,
//                     child: Image.asset(
//                       alignment: Alignment.topCenter,
//                       image.toString(),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   SizedBox(
//                     width: 200,
//                     height: 50,
//                     child: Text(
//                       position.toString(),
//                       textAlign: TextAlign.center,
//                       style: const TextStyle(
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   SizedBox(
//                     width: 100,
//                     child: FittedBox(
//                       fit: BoxFit.fitWidth,
//                       child: Text(
//                         name.toString(),
//                         style: const TextStyle(
//                           color: Colors.black,
//                           fontSize: 20,
//                           fontWeight: FontWeight.normal,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ]),
//           ),
//         )),
//         options: CarouselOptions(
//           onPageChanged: (index, reason) {
//             _currentIndex = index;
//           },
//           initialPage: 0,
//           autoPlay: true,
//           reverse: false,
//           height: 180,
//           disableCenter: true,
//           autoPlayCurve: Curves.fastLinearToSlowEaseIn,
//           scrollPhysics: BouncingScrollPhysics(),
//           viewportFraction: 1,
//         ),
//       ),
//     //   Align(
//     //     alignment: Alignment.bottomCenter,
//     //     child: Container(
//     //         margin: EdgeInsets.only(bottom: 5),
//     //         child: AnimatedSmoothIndicator(
//     //           onDotClicked: (index) {
//     //             _controller.jumpToPage(index);
//     //           },
//     //           activeIndex: _currentIndex,
//     //           count: 4,
//     //           effect: WormEffect(
//     //             dotHeight: 15,
//     //             dotWidth: 15,
//     //             radius: 20,
//     //             dotColor: Colors.white.withOpacity(0.5),
//     //             activeDotColor: Colors.black.withOpacity(0.8),
//     //           ),
//     //         )),
//     //   ),
//      ],
//   );

// }
class DelayedAnimation extends StatefulWidget {
  final Widget child;
  final Duration delay;

  const DelayedAnimation({required this.child, required this.delay});

  @override
  _DelayedAnimationState createState() => _DelayedAnimationState();
}

class _DelayedAnimationState extends State<DelayedAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _animation = Tween<Offset>(
      begin: const Offset(1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    Future.delayed(widget.delay, () {
      if (mounted) {
        _controller.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: widget.child,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
