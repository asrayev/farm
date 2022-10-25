import 'package:farm/models/hayvonlar.dart';
import 'package:farm/models/mahsulotlar.dart';
import 'package:farm/utils/myicons.dart';
import 'package:farm/utils/myimages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/fermalar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics() ,
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      SizedBox(width: 15,),
                      Container(
                        child: Image.asset(MyImages.joja, height: 200, width: 250,),),
                      SizedBox(width: 20,),
                      Container(
                        height: 190,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey, width: 0.4)
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 50,),
                            Image.asset(MyImages.eggspic, height: 70, width: 70,),
                            SizedBox(height: 17,),
                            Container(
                              height: 40,
                              width: 90,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.red, width: 1),
                                borderRadius: BorderRadius.circular(5)
                              ),
                              child: Center(
                                child: Text("12 %", style: TextStyle(color: Colors.red, fontSize: 18),),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 160,
                    width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey, width: 1)
                    ),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                SizedBox(width: 20,),
                                Text("Broller tovuq", style: GoogleFonts.abel().copyWith(fontWeight: FontWeight.w300, fontSize: 25),),
                                SizedBox(width: 100,)
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              children: [
                                SizedBox(width: 20,),
                                Text("Izoh", style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(width: 190,)
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              children: [
                                SizedBox(width: 20,),
                                Text("Shu kunlari infektsiya tarqaldi\nva sizning tovuqlaringiz ham...", style: TextStyle(color: Colors.grey),),
                                SizedBox(width: 30,)
                              ],
                            )
                          ],
                        ),
                        SizedBox(width: 28,),
                        Container(
                          height: 138,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFFF8843),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text("55%", style: TextStyle(color: Colors.white, fontSize: 25),),
                          ),
                        )
                      ],
                    ),

                  ),
                  SizedBox(height: 25,),
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Text("Hayvonlar", style: GoogleFonts.abel().copyWith(fontWeight: FontWeight.bold, fontSize: 18),),
                      SizedBox(width: 265,),
                      Text("barchasi", style: GoogleFonts.abhayaLibre().copyWith(fontWeight: FontWeight.w500),)
                    ],
                  ),
                  SizedBox(height: 5,),
                  Container(
                    height: 120,
                    width: double.infinity,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                        itemCount: Hayvon.ls.length,
                        itemBuilder: (_, index) {

                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(

                                image: NetworkImage(Hayvon.ls[index].link),

                            ),

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(Hayvon.ls[index].name, style: GoogleFonts.bebasNeue().copyWith(color: Colors.white),)
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ), // Hayvonlar
                  SizedBox(height: 25,),
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Text("Mahsulotlar", style: GoogleFonts.abel().copyWith(fontWeight: FontWeight.bold, fontSize: 18),),
                      SizedBox(width: 250,),
                      Text("barchasi", style: GoogleFonts.abhayaLibre().copyWith(fontWeight: FontWeight.w500),)
                    ],
                  ),
                  SizedBox(height: 5,),
                  Container(
                    height: 120,
                    width: double.infinity,
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: Mahsulot.ls.length,
                        itemBuilder: (_, index) {

                          return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 100,
                              width: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(

                                  image: NetworkImage(Mahsulot.ls[index].link),

                                ),

                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Column(
                                  children: [
                                    SizedBox(height: 75),
                                    Row(
                                      children: [
                                        SizedBox(width: 60,),
                                        Container(
                                          height: 30,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15), bottomRight: Radius.circular(10)),
                                            color: Colors.black.withOpacity(0.5)
                                          ),
                                          child: Center(
                                            child: Text(Mahsulot.ls[index].name, style: GoogleFonts.bitter().copyWith(color: Colors.white),),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ),
                            ),
                          );
                        }),
                  ), //Mahsulotlar
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Text("Fermalar", style: GoogleFonts.abel().copyWith(fontWeight: FontWeight.bold, fontSize: 18),)
                    ],
                  ),
                  Container(
                    height: 900,
                    width: 390,
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: 4,
                        itemBuilder: (_, index) {

                          return Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              height: 180,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(Ferms.lst[index].image),
                                  fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF55B963),
                                            borderRadius: BorderRadius.circular(15)
                                          ),
                                          child: Center(
                                            child: Text(Ferms.lst[index].count, style: GoogleFonts.robotoMono().copyWith(color: Colors.white),),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 90,),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(Ferms.lst[index].name, style: GoogleFonts.averiaSerifLibre().copyWith(color: Colors.white, fontSize: 20),),
                                            Text("Eng yaxshi fermer xo'jaliklaridan...", style: GoogleFonts.rajdhani().copyWith(color: Colors.white),),
                                          ],
                                        ),
                                        SizedBox(width: 120,),
                                        Container(
                                          height: 30,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Color(0xFFFF8843)
                                          ),
                                          child: Center(
                                            child: Text(Ferms.lst[index].hayvon,style: GoogleFonts.robotoMono().copyWith(color: Colors.white),),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ), //fermalar
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: SvgPicture.asset(MyIcons.tabhome,), label: "home"),
        BottomNavigationBarItem(icon: SvgPicture.asset(MyIcons.tabsearch,), label: "search"),
        BottomNavigationBarItem(icon: SvgPicture.asset(MyIcons.tabcal,), label: "cal"),
        BottomNavigationBarItem(icon: SvgPicture.asset(MyIcons.tabsetting,), label: "setting"),
      ]),

    );
  }
}
