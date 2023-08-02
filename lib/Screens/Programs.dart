import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../Services/Apidata.dart';

class ProgramsCl extends StatefulWidget {
  const ProgramsCl({super.key});

  @override
  State<ProgramsCl> createState() => _ProgramsState();
}

class _ProgramsState extends State<ProgramsCl> {
  Map Programs={};
  @override
  void initState()  {
    super.initState();
    getdata();
  }
  getdata()async{
    Apidata apidata = new Apidata();
    Map data1 =  await apidata.getPrograms();
    setState(() {
      Programs=data1;
      print(Programs["items"].length);
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
            'Programs',
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
        Programs.isEmpty?
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
                itemCount: Programs["items"].length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index){
                      return Container(

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
                                  width: 407,
                                  height: 250,
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
                      );;
        }),
              ),
            ))
      ],),
    );
  }
}
