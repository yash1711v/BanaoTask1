import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../Services/Apidata.dart';

class Lesson extends StatefulWidget {
  const Lesson({super.key});

  @override
  State<Lesson> createState() => _LessonState();
}

class _LessonState extends State<Lesson> {
  Map Lesson={};
  @override
  void initState()  {
    super.initState();
    getdata();
  }
  getdata()async{
    Apidata apidata = new Apidata();
    Map data1 =  await apidata.getLessons();
    setState(() {
      Lesson=data1;
      print(Lesson["items"].length);
    });}
  double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
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
      body: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 25,top: 15),
          child: const Text(
            'Lessons',
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
        Lesson.isEmpty?
        Lottie.asset("lib/Gif/featuredres.json"):Expanded(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: SizedBox(
                width:deviceWidth(context)*0.98,
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 12.2,
                    mainAxisSpacing: 5.0

                ),
                    itemCount: Lesson["items"].length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index){
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
                                  width: 407,
                                  height: 200,
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
                                    Lesson['items'][index]['category'],
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
                                      Lesson['items'][index]['name'],
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
                                          Lesson['items'][index]["duration"].toString(),
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
                                        margin: EdgeInsets.only(left: 280),
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
            ))
      ],),
    );
  }
}
