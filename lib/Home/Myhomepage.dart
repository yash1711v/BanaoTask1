import 'package:banaotask1/Screens/Lessons.dart';
import 'package:banaotask1/Screens/Programs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import '../Services/Apidata.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map Programs={};
  Map lessons={};
  @override
  void initState()  {
    super.initState();
    getdata();
  }
  getdata()async{
    Apidata apidata = new Apidata();
    Map data1 =  await apidata.getPrograms();
    Map data2 =  await apidata.getLessons();
    setState(() {
      Programs=data1;
      lessons=data2;
      print(Programs["items"].length);
      print(lessons["items"]);
    });}
  @override
  Widget build(BuildContext context) {
    List Events=[
      {'id':0,'name':'BABYCARE','tagLine':'Understanding of human behaviour','lesson':"13 Feb,Sunday",'bgimage':'lib/assests/6389643 1.png' , 'time':"3 min"},
      {'id':1,'name':'BABYCARE','tagLine':'Understanding of human behaviour','lesson':"13 Feb,Sunday",'bgimage':'lib/assests/4f5de2a49cf8c91d688f418c27dca2db.jpeg','time':"1 min"},
    ];
    double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
    double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 35,
        backgroundColor: const Color(0xFFC4C4C4),
        leading: Container(
          width: 240,
          height: 240,
          child: Stack(
            children: [
              Positioned(
                left: 15,
                top: 5,
                child: Container(
                  width: 35,
                  height: 6,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF939BA3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 15,
                child: Container(
                  width: 18,
                  height: 6,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF939BA3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10, bottom: 10),
                child: Image.asset('assests/forum_black_24dp 1.png'),
              ),
              Container(
                margin:
                const EdgeInsets.only(right: 20, bottom: 10, left: 10),
                child: Image.asset('assests/Notification.png'),
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                margin: EdgeInsets.only(left: deviceWidth(context)*0.05,top: deviceHeight(context)*0.04),
                child: const Text(
                  'Hello, Priya!',
                  style: TextStyle(
                    color: Color(0xFF08090A),
                    fontSize: 20,
                    fontFamily: 'Lora',
                    fontWeight: FontWeight.bold,
                    height: 2,
                    letterSpacing: -0.20,
                  ),
                ),
              ),
            ),
            Positioned(
              child: Container(
                margin: EdgeInsets.only(left: deviceWidth(context)*0.05,top: deviceHeight(context)*0.08),
                child: const Text(
                  'What do you wanna learn today?',
                  style: TextStyle(
                    color: Color(0xFF6C747A),
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 2,
                    letterSpacing: -0.20,
                  ),
                ),
              ),
            ),
            Positioned(
                child: Container(
                  margin: EdgeInsets.only(left: 17,top: 125,right: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 48,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 3, color: Color(0xFF598BED)),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      margin: const EdgeInsets.only(left: 15),
                                      child:
                                      Image.asset('lib/assests/Book-mark.png',
                                        height: 25,

                                      )),
                                  Container(
                                      child: const Text(
                                        'Programs',
                                        style: TextStyle(
                                          color: Color(0xFF598BED),
                                          fontSize: 15,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 2,
                                          letterSpacing: -0.07,
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(left: 15),
                              height: 48,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 3, color: Color(0xFF598BED)),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      margin: const EdgeInsets.only(left: 15),
                                      child: Image.asset(
                                        'lib/assests/help-circle.png',
                                        height: 25,
                                      )),
                                  Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: const Text(
                                        'Get help',
                                        style: TextStyle(
                                          color: Color(0xFF598BED),
                                          fontSize: 15,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 2,
                                          letterSpacing: -0.07,
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 48,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 3, color: Color(0xFF598BED)),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.only(left: 15),
                                        child: Image.asset(
                                          'lib/assests/Book-open.png',
                                          height: 25,
                                        )),
                                    Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 25),
                                        child: const Text(
                                          'Learn',
                                          style: TextStyle(
                                            color: Color(0xFF598BED),
                                            fontSize: 15,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                            height: 2,
                                            letterSpacing: -0.07,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.only(left: 15),
                                height: 48,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 3, color: Color(0xFF598BED)),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.only(left: 15),
                                        child:
                                        Image.asset('lib/assests/trello.png',
                                          height: 25,
                                        )),
                                    Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: const Text(
                                          'DD Tracker',
                                          style: TextStyle(
                                            color: Color(0xFF598BED),
                                            fontSize: 15,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                            height: 2,
                                            letterSpacing: -0.07,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            Positioned(
                child: Container(
                  margin: EdgeInsets.only(left: deviceWidth(context)*0.04,top: deviceHeight(context)*0.28),
                  child: const Text(
                    'Programs for you',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.bold,
                      height: 2,
                      letterSpacing: -0.18,
                    ),
                  ),
                )),
            Positioned(
                child: Container(
                  margin: EdgeInsets.only(left: deviceWidth(context)*0.73,top: deviceHeight(context)*0.18),
                  child: Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.transparent,
                            splashFactory: NoSplash.splashFactory,

                          ),
                          onPressed: () {
                            print("View All Programs");
                            Get.to(()=>ProgramsCl());

                          },
                          child: Row(
                            children: [
                              const Text(
                                'View all',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF6C747A),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 18,
                                  letterSpacing: -0.12,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 4),
                                child: const Icon(
                                  Icons.arrow_forward,
                                  color: Color(0xFF6C747A),
                                  size: 20,
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                )),
            Positioned(
              child: Container(
                margin: EdgeInsets.only(top: 310),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    height: deviceHeight(context)*0.3,
                    child: Programs.isEmpty?
                        Lottie.asset("lib/Gif/featuredres.json")
                        :ListView.builder(
                        shrinkWrap: true,
                        itemCount: Programs["items"].length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 24,
                            margin: EdgeInsets.only(left: 15),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 0.50, color: Color(0xFFEBEDF0)),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x140E443E),
                                  blurRadius: 12,
                                  offset: Offset(0, 0),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 279,
                                      height: 140,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 50),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Color(index%2==0?0xFFDDE3C2:0xFFFFF0D3),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(8),
                                            topRight: Radius.circular(8),
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 145,
                                            height: 140,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 140,
                                                  height: 140,
                                                  child: Stack(children: [
                                                    Container(
                                                      width: 140,
                                                      height: 140,
                                                      clipBehavior: Clip.antiAlias,
                                                      decoration: BoxDecoration(),
                                                      child: Column(
                                                        mainAxisSize:
                                                        MainAxisSize.min,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        children: [
                                                          Container(
                                                            width: 140,
                                                            height: 140,
                                                            child: Stack(children: [
                                                              Image.asset(
                                                                  index%2==0?'lib/assests/6389643 1.png':'lib/assests/4f5de2a49cf8c91d688f418c27dca2db.jpeg')
                                                            ]),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ]),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 12),
                                      child: Text(
                                        Programs['items'][index]['category'],
                                        style: const TextStyle(
                                          color: Color(0xFF598BED),
                                          fontSize: 12,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w700,
                                          height: 4,
                                          letterSpacing: -0.24,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 15),
                                      child: SizedBox(
                                        width: 200,
                                        child: Text(
                                          Programs['items'][index]['name'],
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700,
                                            height: 2,
                                            letterSpacing: -0.16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 15,top: 25),
                                      child: SizedBox(
                                        width: 144,
                                        child: Text(
                                          "Lesson "+Programs['items'][index]['lesson'].toString(),
                                          style: const TextStyle(
                                            color: Color(0xFF6C747A),
                                            fontSize: 12,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            height: 1,
                                            letterSpacing: -0.12,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20,top: 600),
              child: const Text(
                'Events and experiences',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Lora',
                  fontWeight: FontWeight.bold,
                  height: 2,
                  letterSpacing: -0.18,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 317,top: 510,),
              child: Row(
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                      ),
                      onPressed: () {
                        print("View All");
                      },
                      child: Row(
                        children: [
                          const Text(
                            'View all',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF6C747A),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 18,
                              letterSpacing: -0.12,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 4),
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Color(0xFF6C747A),
                              size: 20,
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 655,bottom: 15),
              height: deviceHeight(context)*0.36,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: Events.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 24,
                          margin: EdgeInsets.only(left: 15),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.50, color: Color(0xFFEBEDF0)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x140E443E),
                                blurRadius: 12,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 280,
                                    height: 140,
                                    decoration: const ShapeDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('lib/assests/be4b9e82de3c92aad202bcc878b11688.jpeg'),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 12),
                                    child: Text(
                                      Events[index]['name'],
                                      style: const TextStyle(
                                        color: Color(0xFF598BED),
                                        fontSize: 12,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        height: 4,
                                        letterSpacing: -0.24,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child: SizedBox(
                                      width: 200,
                                      child: Text(
                                        Events[index]['tagLine'],
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w700,
                                          height: 2,
                                          letterSpacing: -0.16,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15,top: 25),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width:85,
                                          child: Text(
                                            Events[index]["lesson"],
                                            style: TextStyle(
                                              color: Color(0xFF6C747A),
                                              fontSize: 12,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              height: 1,
                                              letterSpacing: -0.12,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 85,right: 15),
                                          child: OutlinedButton(onPressed: () {  }, child: Text('Book'),),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20,top: 1000),
              child: const Text(
                'Lessons for you',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Lora',
                  fontWeight: FontWeight.bold,
                  height: 2,
                  letterSpacing: -0.18,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 315,top: 910),
              child: Row(
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                      ),
                      onPressed: () {
                       Get.to(()=>Lesson());

                      },
                      child: Row(
                        children: [
                          const Text(
                            'View all',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF6C747A),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 18,
                              letterSpacing: -0.12,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 4),
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Color(0xFF6C747A),
                              size: 20,
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 1050,bottom: 15),
              height: deviceHeight(context)*0.35,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  child: lessons.isEmpty?Lottie.asset("lib/Gif/featuredres.json"):ListView.builder(
                      shrinkWrap: true,
                      itemCount: lessons['items'].length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 24,
                          width: 316,
                          margin: EdgeInsets.only(left: 15),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 0.50, color: Color(0xFFEBEDF0)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x140E443E),
                                blurRadius: 12,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 314,
                                    height: 140,
                                    decoration: ShapeDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('lib/assests/be4b9e82de3c92aad202bcc878b11688.jpeg'),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 12),
                                    child: Text(
                                      lessons['items'][index]['category'],
                                      style: const TextStyle(
                                        color: Color(0xFF598BED),
                                        fontSize: 12,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        height: 4,
                                        letterSpacing: -0.24,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child: SizedBox(
                                      width: 300,
                                      height: 90,
                                      child: Text(
                                        lessons['items'][index]['name'],
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w700,
                                          height: 2,
                                          letterSpacing: -0.16,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15,),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width:60,
                                          child: Text(
                                            lessons['items'][index]["duration"].toString(),
                                            style: TextStyle(
                                              color: Color(0xFF6C747A),
                                              fontSize: 12,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              height: 1,
                                              letterSpacing: -0.12,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 180),
                                          child: IconButton(onPressed: () {  }, icon: Icon(Icons.lock_outlined),),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: "Learn",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hub),
            label: "Hub",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: "Profile",
          ),
        ],

      ),
    );
  }
}