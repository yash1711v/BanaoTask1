import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List programs=[
      {'id':0,'name':'LIFESTYLE','tagLine':'A complete guide for your new born baby','lesson':"16 lessons",'bgcolor':0xFFDDE3C2,'bgimage':'lib/assests/6389643 1.png'},
      {'id':1,'name':'WORKING PARENTS','tagLine':'Understanding of human behaviour','lesson':"12 lessons",'bgcolor':0xFFFFF0D3,'bgimage':'lib/assests/4f5de2a49cf8c91d688f418c27dca2db.jpeg'},
    ];
    List Events=[
      {'id':0,'name':'BABYCARE','tagLine':'Understanding of human behaviour','lesson':"13 Feb,Sunday",'bgimage':'lib/assests/6389643 1.png' , 'time':"3 min"},
      {'id':1,'name':'BABYCARE','tagLine':'Understanding of human behaviour','lesson':"13 Feb,Sunday",'bgimage':'lib/assests/4f5de2a49cf8c91d688f418c27dca2db.jpeg','time':"1 min"},
    ];
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
                  margin: EdgeInsets.only(left: 25,top: 30),
                  child: Text(
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
                  margin: EdgeInsets.only(left: 25,top: 55  ),
                  child: Text(
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
                            Container(
                              width: 190,
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
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 20),
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
                            Container(
                              margin: const EdgeInsets.only(left: 15),
                              width: 190,
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
                                      margin: const EdgeInsets.only(left: 20),
                                      child: Image.asset(
                                          'lib/assests/help-circle.png',
                                        height: 25,
                                      )),
                                  Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 25),
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
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: Row(
                            children: [
                              Container(
                                width: 190,
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
                              Container(
                                margin: const EdgeInsets.only(left: 15),
                                width: 190,
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
                                            horizontal: 25),
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
               Positioned(
                  child: Container(
                    margin: EdgeInsets.only(left: 20,top: 260),
                    child: Text(
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
                    margin: EdgeInsets.only(left: 315,top: 173),
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
                                  child: Icon(
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
                      height: 315,
                      child: ListView.builder(
                            shrinkWrap: true,
                              itemCount: programs.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  height: 24,
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
                                            width: 279,
                                            height: 140,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 50),
                                            clipBehavior: Clip.antiAlias,
                                            decoration: ShapeDecoration(
                                              color: Color(programs[index]['bgcolor']),
                                              shape: RoundedRectangleBorder(
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
                                                                        programs[index]['bgimage'])
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
                                              programs[index]['name'],
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
                                                programs[index]['tagLine'],
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
                                            margin: EdgeInsets.only(left: 15,top: 25),
                                            child: SizedBox(
                                              width: 144,
                                              child: Text(
                                                programs[index]["lesson"],
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
                margin: EdgeInsets.only(left: 20,top: 640),
                child: Text(
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
                margin: EdgeInsets.only(left: 315,top: 550),
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
                              child: Icon(
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
                margin: EdgeInsets.only(top: 690,bottom: 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    height: 345,
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
                                      width: 280,
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
                margin: EdgeInsets.only(left: 20,top: 1045),
                child: Text(
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
                margin: EdgeInsets.only(left: 315,top: 960),
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
                              child: Icon(
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
                margin: EdgeInsets.only(top: 1100,bottom: 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    height: 340,
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
                                      width: 280,
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
                                      margin: EdgeInsets.only(left: 15,top: 25),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width:60,
                                            child: Text(
                                              Events[index]["time"],
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
                                            margin: EdgeInsets.only(left: 145),
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
