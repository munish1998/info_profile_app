import 'package:flutter/material.dart';
import 'package:flutter_web/app_string.dart';
import 'package:flutter_web/cards.dart';
import 'package:flutter_web/infoprofile_company.dart';
import 'package:flutter_web/infoprofile_copyright.dart';
import 'package:flutter_web/infoprofile_features.dart';
import 'package:flutter_web/infoprofile_field.dart';
import 'package:flutter_web/infoprofile_help.dart';
import 'package:flutter_web/infoprofile_link.dart';
import 'package:flutter_web/infoprofile_log.dart';
import 'package:flutter_web/inforichtext.dart';
import 'package:flutter_web/richtext.dart';

class TabletPage extends StatefulWidget {
  const TabletPage({super.key});
  @override
  State<TabletPage> createState() => _TabletPageState();
}

class _TabletPageState extends State<TabletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 217, 233, 246),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(),
            const Positioned(
                left: 0,
                child: Image(image: AssetImage('assets/image/image2.png'))),
            const Positioned(
                right: 0,
                child: Image(image: AssetImage('assets/image/image3.png'))),
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
                              text: 'Meet Your Best\n',
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
                  Center(
                    child: Card(
                      elevation: 5,
                      child: Container(
                        width: 420,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            //crossAxisAlignment: CrossAxisAlignment.baseline,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Log In',
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Color.fromARGB(225, 7, 99, 198),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Enter username/email and password to login or use social media account to login into the application',
                                    style: TextStyle(fontSize: 15),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                decoration: InputDecoration(
                                    hintText: 'Username/email',
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    prefixIcon: const Icon(Icons.email)
                                    //suffixIcon: Icon(Icons.remove_red_eye_outlined)
                                    ),
                                validator: (value) {
                                  if (value!.isEmpty ||
                                      !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                          .hasMatch(value)) {
                                    return 'enter correct email';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                decoration: InputDecoration(
                                    hintText: ' Password',
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    prefixIcon:
                                        const Icon(Icons.password_outlined),
                                    suffixIcon: const Icon(
                                        Icons.remove_red_eye_outlined)),
                                validator: (value) {
                                  if (value!.isEmpty ||
                                      !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                          .hasMatch(value)) {
                                    return 'enter correct password';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Forget password?',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 55,
                                width: 380,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(148, 64, 115, 169),
                                    borderRadius: BorderRadius.circular(15)),
                                padding:
                                    const EdgeInsets.only(left: 100, top: 5),
                                child: const Text(
                                  '           Log in',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 1,
                                    width: 55,
                                    decoration: const BoxDecoration(
                                        color: Colors.black),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    'OR',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    height: 1,
                                    width: 55,
                                    decoration: const BoxDecoration(
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                'Log in with OTP',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(225, 7, 99, 198)),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset('assets/image/facebook1.png'),
                                  Image.asset('assets/image/google.png'),
                                  Image.asset('assets/image/linkdin.png'),
                                  Image.asset('assets/image/apple.png'),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Don\'t have an account?',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black45),
                                  ),
                                  Text(
                                    'Sign Up',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(225, 7, 99, 198),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // const Form1(
                  //   width1: 500,
                  //   margin1: null,
                  // ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                          height: 180,
                          width: 170,
                          image: AssetImage('assets/image/app.png')),
                      SizedBox(
                        width: 20,
                      ),
                      Image(
                          height: 180,
                          width: 170,
                          image: AssetImage('assets/image/googleplay.png')),
                    ],
                  ),
                  const InfoRichtext(),
                  const Padding(padding: EdgeInsets.only(top: 30)),
                  // ignore: non_constant_identifier_names
                  LayoutBuilder(builder: (context, Constraints) {
                    if (Constraints.maxWidth > 600 &&
                        Constraints.maxWidth < 700) {
                      return Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: MediaQuery.of(context).size.height * 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Cards(
                                  height1: 300,
                                  width1:
                                      MediaQuery.of(context).size.width * 0.3,
                                  icon1: Icons.feed,
                                  title1: AppStrings.cardTitle1,
                                  subtitle: AppStrings.cardSubTitle1,
                                ),
                                Cards(
                                  height1: 300,
                                  width1:
                                      MediaQuery.of(context).size.width * 0.3,
                                  icon1: Icons.connect_without_contact,
                                  title1: AppStrings.cardTitle2,
                                  subtitle: AppStrings.cardSubTitle2,
                                ),
                              ],
                            ),
                            Cards(
                              height1: 300,
                              width1: MediaQuery.of(context).size.width * 0.3,
                              icon1: Icons.person,
                              title1: AppStrings.cardTitle3,
                              subtitle: AppStrings.cardSubTitle3,
                            ),
                          ],
                        ),
                      );
                    } else {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Cards(
                            height1: 310,
                            width1: MediaQuery.of(context).size.width * 0.2,
                            icon1: Icons.feed,
                            title1: AppStrings.cardTitle1,
                            subtitle: AppStrings.cardSubTitle1,
                          ),
                          Cards(
                            height1: 310,
                            width1: MediaQuery.of(context).size.width * 0.2,
                            icon1: Icons.connect_without_contact,
                            title1: AppStrings.cardTitle2,
                            subtitle: AppStrings.cardSubTitle2,
                          ),
                          Cards(
                            height1: 310,
                            width1: MediaQuery.of(context).size.width * 0.2,
                            icon1: Icons.person,
                            title1: AppStrings.cardTitle3,
                            subtitle: AppStrings.cardSubTitle3,
                          ),
                        ],
                      );
                    }
                  }),
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
                                image: AssetImage('assets/image/frame2.png'))),
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
                                width: MediaQuery.of(context).size.width * 0.7,
                              ),
                              RichText1(
                                width1: MediaQuery.of(context).size.width * 0.6,
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
                                image: AssetImage('assets/image/frame6.png'))),
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
                                width: MediaQuery.of(context).size.width * 0.7,
                              ),
                              const Padding(padding: EdgeInsets.only(top: 0)),
                              RichText1(
                                width1: MediaQuery.of(context).size.width * 0.6,
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
                              'assets/image/Frame7.png',
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
                                    height: 180,
                                    width: 170,
                                    image: AssetImage(
                                        'assets/image/googlePlay.png')),
                                SizedBox(
                                  width: 20,
                                ),
                                Image(
                                    height: 180,
                                    width: 170,
                                    image: AssetImage('assets/image/app.png')),
                              ],
                            ),
                          ],
                        ))
                      ],
                    ),
                  ),
                  const Image(
                    image: AssetImage('assets/image/frame10.png'),
                    width: 500,
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
                          height: 650,
                        ),
                        Positioned(
                            top: 100,
                            child: Container(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              color: const Color.fromARGB(255, 7, 99, 198),
                              child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 160,
                                      left: 20,
                                      bottom: 20,
                                      right: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          const BottomLogoSection(),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  BottomFeatureSection(),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 30)),
                                                  BottomLinkSection(),
                                                ],
                                              ),
                                              const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 19)),
                                              Container(
                                                height: 300,
                                                width: 1,
                                                color: Colors.white30,
                                              ),
                                              const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 19)),
                                              const Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  BottomCompanySection(),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 30)),
                                                  BottomHelpSection(),
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      const Padding(
                                          padding: EdgeInsets.only(top: 20)),
                                      BottomCopyrightSection(),
                                    ],
                                  )),
                            )),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 500,
                            height: 200,
                            child: Card(
                              surfaceTintColor: Colors.white,
                              elevation: 12,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      AppStrings.freeInfoprofile,
                                      style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 7, 99, 198)),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(top: 10)),
                                    const Row(
                                      children: [
                                        BottomCardFields(
                                            checktext:
                                                AppStrings.multipleProfile),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        BottomCardFields(
                                            checktext: AppStrings.creatives),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        BottomCardFields(
                                            checktext:
                                                AppStrings.buildConnections),
                                      ],
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(top: 20)),
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
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        Container(
                                          height: 50,
                                          width: 120,
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
                                                fontSize: 22,
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
