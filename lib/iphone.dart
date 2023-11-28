import 'package:flutter/material.dart';
import 'package:flutter_web/app_string.dart';
import 'package:flutter_web/cards.dart';
import 'package:flutter_web/form.dart';
import 'package:flutter_web/infoprofile_company.dart';
import 'package:flutter_web/infoprofile_copyright.dart';
import 'package:flutter_web/infoprofile_features.dart';
import 'package:flutter_web/infoprofile_field.dart';
import 'package:flutter_web/infoprofile_help.dart';
import 'package:flutter_web/infoprofile_link.dart';
import 'package:flutter_web/infoprofile_log.dart';
import 'package:flutter_web/richtext.dart';

class MobilePage extends StatefulWidget {
  const MobilePage({super.key});
  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 217, 233, 246),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(),
              const Positioned(
                  left: 0,
                  child: Image(image: AssetImage('assets/image/image2.png'))),
              Positioned(
                  right: 0,
                  top: 70,
                  child: Image(
                      width: MediaQuery.of(context).size.width * 0.95,
                      image: const AssetImage('assets/image/image3.png'))),
              Positioned(
                  child: Center(
                child: Column(
                  children: [
                    const Image(image: AssetImage('assets/image/image1.png')),
                    Container(
                      child: Column(
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: 'Meet Your Best',
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black.withOpacity(0.8))),
                            const TextSpan(
                                text: '\t\tConnections',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 7, 99, 198),
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold))
                          ])),
                          const Padding(padding: EdgeInsets.only(top: 20)),
                          const Text(
                            AppStrings.build,
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 40)),
                    Form1(
                      width1: MediaQuery.of(context).size.width * 0.9,
                      margin1: null,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                            height: 150,
                            width: 120,
                            image: AssetImage('assets/image/app.png')),
                        SizedBox(
                          width: 20,
                        ),
                        Image(
                            height: 150,
                            width: 120,
                            image: AssetImage('assets/image/googlePlay.png')),
                      ],
                    ),
                    //const InfoRichtext(),
                    const Text.rich(TextSpan(children: [
                      TextSpan(
                          text: 'Infoprolfile is designed for everyone.\n',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      TextSpan(
                          text: 'What',
                          style: TextStyle(
                              color: Color.fromARGB(225, 7, 99, 198),
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: ' Infoprofile provides ',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 7, 99, 198))),
                      TextSpan(
                          text: 'you.',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black))
                    ])),
                    const Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Cards(
                          height1: 250,
                          width1: 200,
                          icon1: Icons.feed,
                          title1: AppStrings.cardTitle1,
                          subtitle: AppStrings.cardSubTitle1,
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Cards(
                          height1: 250,
                          width1: 200,
                          icon1: Icons.connect_without_contact,
                          title1: AppStrings.cardTitle2,
                          subtitle: AppStrings.cardSubTitle2,
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Cards(
                          height1: 250,
                          width1: 200,
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
                                  height: 550,
                                  // width: 250,
                                  image:
                                      AssetImage('assets/image/frame2.png'))),
                          Positioned(
                              child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/image/frame4.png',
                                  height:
                                      MediaQuery.of(context).size.height * 0.5,
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                ),
                                // const Padding(padding: EdgeInsets.only(top: 30)),
                                RichText1(
                                  width1:
                                      MediaQuery.of(context).size.width * 0.6,
                                  span1: AppStrings.you,
                                  span2: AppStrings.multi,
                                  span3: AppStrings.foryou,
                                  bodytext: AppStrings.domain,
                                ),
                              ],
                            ),
                          ))
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
                                  height: 500,
                                  // width: 250,
                                  image:
                                      AssetImage('assets/image/frame6.png'))),
                          Positioned(
                              child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/image/frame5.png',
                                  height:
                                      MediaQuery.of(context).size.height * 0.5,
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                ),
                                RichText1(
                                  width1:
                                      MediaQuery.of(context).size.width * 0.6,
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
                              child: Column(
                            children: [
                              Image(
                                image: AssetImage('assets/image/frame8.png'),
                                height: 400,
                                width: 400,
                              ),
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
                                      height: 150,
                                      width: 120,
                                      image: AssetImage(
                                          'assets/image/googlePlay.png')),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Image(
                                      height: 150,
                                      width: 120,
                                      image:
                                          AssetImage('assets/image/app.png')),
                                ],
                              ),
                            ],
                          ))
                        ],
                      ),
                    ),
                    Image(
                      image: const AssetImage('assets/image/frame10.png'),
                      width: MediaQuery.of(context).size.width * 0.9,
                    ),
                    RichText1(
                      width1: MediaQuery.of(context).size.width * 0.6,
                      span1: AppStrings.make,
                      bodytext: AppStrings.best,
                    ),

                    const Padding(padding: EdgeInsets.only(top: 30)),
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            color: const Color.fromARGB(255, 217, 233, 246),
                            width: MediaQuery.of(context).size.width,
                            height: 1130,
                          ),
                          Positioned(
                              top: 150,
                              child: Container(
                                height: MediaQuery.of(context).size.height * 3,
                                width: MediaQuery.of(context).size.width,
                                color: const Color.fromARGB(255, 7, 99, 198),
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 200, left: 20, right: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const BottomLogoSection(),
                                        const Padding(
                                            padding: EdgeInsets.only(top: 30)),
                                        const BottomFeatureSection(),
                                        const Padding(
                                            padding: EdgeInsets.only(top: 30)),
                                        const BottomLinkSection(),
                                        const Padding(
                                            padding: EdgeInsets.only(top: 30)),
                                        const BottomCompanySection(),
                                        const Padding(
                                            padding: EdgeInsets.only(top: 30)),
                                        const BottomHelpSection(),
                                        const Padding(
                                            padding: EdgeInsets.only(top: 30)),
                                        BottomCopyrightSection(),
                                      ],
                                    )),
                              )),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: 280,
                              child: Card(
                                surfaceTintColor: Colors.white,
                                elevation: 12,
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            AppStrings.freeInfoprofile,
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 7, 99, 198)),
                                          ),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 10)),
                                          Row(
                                            children: [
                                              BottomCardFields(
                                                checktext:
                                                    AppStrings.multipleProfile,
                                              ),
                                            ],
                                          ),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 10)),
                                          Row(
                                            children: [
                                              BottomCardFields(
                                                checktext: AppStrings.creatives,
                                              ),
                                            ],
                                          ),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 10)),
                                          Row(
                                            children: [
                                              BottomCardFields(
                                                checktext:
                                                    AppStrings.buildConnections,
                                              ),
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
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            width: 30,
                                          ),
                                          Container(
                                            height: 50,
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
                                                  fontSize: 25,
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
      ),
    );
  }
}
