import 'package:flutter/material.dart';
import 'package:flutter_web/app_string.dart';
import 'package:flutter_web/cards.dart';
import 'package:flutter_web/form.dart';
import 'package:flutter_web/infoprofile_company.dart';
import 'package:flutter_web/infoprofile_copyright.dart';
import 'package:flutter_web/infoprofile_features.dart';
import 'package:flutter_web/infoprofile_help.dart';
import 'package:flutter_web/infoprofile_link.dart';
import 'package:flutter_web/infoprofile_log.dart';
import 'package:flutter_web/inforichtext.dart';
import 'package:flutter_web/richtext.dart';
import 'infoprofile_field.dart';

class DesktopPage extends StatefulWidget {
  const DesktopPage({super.key});
  @override
  State<DesktopPage> createState() => _DesktopPageState();
}

class _DesktopPageState extends State<DesktopPage> {
  final ScrollController sc = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 217, 233, 246),
      body: SingleChildScrollView(
        controller: sc,
        child: Stack(
          children: [
            Container(),
            const Positioned(
                left: 0,
                child: Image(image: AssetImage('assets/image/image2.png'))),
            const Positioned(
                right: 0,
                child: Image(
                    width: 620, image: AssetImage('assets/image/image3.png'))),
            Positioned(
                child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Image(
                                image: AssetImage('assets/image/image1.png')),
                            const Padding(padding: EdgeInsets.only(top: 180)),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                      text: TextSpan(children: [
                                    TextSpan(
                                        text: 'Meet Your Best\n',
                                        style: TextStyle(
                                            fontSize: 50,
                                            fontWeight: FontWeight.w900,
                                            color:
                                                Colors.black.withOpacity(0.8))),
                                    const TextSpan(
                                        text: 'Connections',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 7, 99, 198),
                                            fontSize: 50,
                                            fontWeight: FontWeight.bold))
                                  ])),
                                  const Padding(
                                      padding: EdgeInsets.only(top: 20)),
                                  const Text(
                                    AppStrings.build,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  const Row(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image(
                                          height: 100,
                                          width: 170,
                                          image: AssetImage(
                                              'assets/image/app.png')),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Image(
                                          height: 100,
                                          width: 170,
                                          image: AssetImage(
                                              'assets/image/googlePlay.png')),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 150, top: 100),
                              child: InkWell(
                                onTap: () {
                                  sc.animateTo(
                                      MediaQuery.of(context).size.height,
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.easeInOut);
                                },
                                child: Container(
                                  height: 80,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 7, 99, 198)),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/image/arrow1.png',
                                          scale: 1.5,
                                        ),
                                        Image.asset(
                                          'assets/image/arrow2.png',
                                          scale: 1.5,
                                        ),
                                        Image.asset(
                                          'assets/image/arrow3.png',
                                          scale: 1.5,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Form1(
                        width1: 500,
                        margin1: EdgeInsets.only(top: 100),
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(top: 140)),
                  const InfoRichtext(),
                  const Padding(padding: EdgeInsets.only(top: 80)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Cards(
                        height1: 250,
                        width1: MediaQuery.of(context).size.width * 0.2,
                        icon1: Icons.feed,
                        title1: AppStrings.cardTitle1,
                        subtitle: AppStrings.cardSubTitle1,
                      ),
                      Cards(
                        height1: 250,
                        width1: MediaQuery.of(context).size.width * 0.2,
                        icon1: Icons.connect_without_contact,
                        title1: AppStrings.cardTitle2,
                        subtitle: AppStrings.cardSubTitle2,
                      ),
                      Cards(
                        height1: 250,
                        width1: MediaQuery.of(context).size.width * 0.2,
                        icon1: Icons.person,
                        title1: AppStrings.cardTitle3,
                        subtitle: AppStrings.cardSubTitle3,
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(top: 30)),
                  Container(
                    child: Stack(
                      children: [
                        Container(),
                        const Positioned(
                            left: 0,
                            child: Image(
                                height: 400,
                                image: AssetImage('assets/image/frame2.png'))),
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            RichText1(
                              width1: MediaQuery.of(context).size.width * 0.3,
                              span1: AppStrings.you,
                              span2: AppStrings.multi,
                              span3: AppStrings.foryou,
                              bodytext: AppStrings.domain,
                            ),
                            Image.asset(
                              'assets/image/frame4.png',
                              height: 400,
                              width: 400,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 30)),
                  Container(
                    child: Stack(
                      children: [
                        Container(),
                        const Positioned(
                            right: 0,
                            top: 100,
                            child: Image(
                                height: 300,
                                // width: 250,
                                image: AssetImage('assets/image/frame6.png'))),
                        Positioned(
                            child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                'assets/image/frame5.png',
                                height: 400,
                                width: 400,
                              ),
                              RichText1(
                                width1: MediaQuery.of(context).size.width * 0.3,
                                span1: AppStrings.be,
                                span2: AppStrings.creative,
                                span3: AppStrings.community,
                                bodytext: AppStrings.produce,
                              ),
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 30)),
                  Container(
                    color: const Color.fromARGB(255, 7, 99, 198),
                    child: Stack(
                      children: [
                        Container(),
                        Positioned(
                            left: 0,
                            child: Image.asset(
                              'assets/image/frame7.png',
                              height: 150,
                              width: 150,
                            )),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Image.asset(
                              'assets/image/frame7.png',
                              height: 150,
                              width: 150,
                            )),
                        const Positioned(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Download our App from',
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                        height: 100,
                                        width: 170,
                                        image: AssetImage(
                                            'assets/image/googlePlay.png')),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image(
                                        height: 100,
                                        width: 170,
                                        image:
                                            AssetImage('assets/image/app.png')),
                                  ],
                                ),
                              ],
                            ),
                            Image(
                              image: AssetImage('assets/image/frame8.png'),
                              height: 400,
                              width: 400,
                            ),
                          ],
                        ))
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Image(
                        image: AssetImage('assets/image/frame10.png'),
                        width: 500,
                        height: 500,
                      ),
                      RichText1(
                        width1: MediaQuery.of(context).size.width * 0.3,
                        span1: AppStrings.make,
                        bodytext: AppStrings.best,
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(top: 30)),
                  Container(
                    child: Stack(
                      children: [
                        Container(
                          color: const Color.fromARGB(255, 217, 233, 246),
                          width: MediaQuery.of(context).size.width,
                          height: 420,
                        ),
                        Positioned(
                            top: MediaQuery.of(context).size.height * 0.08,
                            child: Container(
                              // height: MediaQuery.of(context).size.height * 0.7,
                              width: MediaQuery.of(context).size.width,
                              color: const Color.fromARGB(255, 7, 99, 198),
                              child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 100,
                                      left: 40,
                                      bottom: 20,
                                      right: 40),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const BottomLogoSection(),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const BottomFeatureSection(),
                                              const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 20)),
                                              Container(
                                                height: 170,
                                                width: 1,
                                                color: Colors.white30,
                                              ),
                                              const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 20)),
                                              const BottomLinkSection(),
                                              const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 20)),
                                              Container(
                                                height: 170,
                                                width: 1,
                                                color: Colors.white30,
                                              ),
                                              const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 20)),
                                              const BottomCompanySection(),
                                              const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 20)),
                                              Container(
                                                height: 170,
                                                width: 1,
                                                color: Colors.white30,
                                              ),
                                              const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 20)),
                                              const BottomHelpSection(),
                                            ],
                                          )
                                        ],
                                      ),
                                      const Padding(
                                          padding: EdgeInsets.only(top: 20)),
                                      BottomCopyrightSection()
                                    ],
                                  )),
                            )),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.66,
                            height: 130,
                            child: Card(
                              surfaceTintColor: Colors.white,
                              elevation: 12,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          AppStrings.freeInfoprofile,
                                          style: TextStyle(
                                              fontSize: 28,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 7, 99, 198)),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(top: 10)),
                                        Row(
                                          children: [
                                            BottomCardFields(
                                                checktext:
                                                    AppStrings.multipleProfile),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            BottomCardFields(
                                                checktext:
                                                    AppStrings.creatives),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            BottomCardFields(
                                                checktext: AppStrings
                                                    .buildConnections),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          AppStrings.login,
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                              decorationColor: Color.fromARGB(
                                                  255, 7, 99, 198),
                                              color: Color.fromARGB(
                                                  255, 7, 99, 198),
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        Container(
                                          height: 40,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 7, 99, 198),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              AppStrings.signup,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
