import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/app_string.dart';

class Form1 extends StatelessWidget {
  final width1;
  final margin1;
  const Form1({super.key, this.width1, this.margin1});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin1,
      width: width1,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.login,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 7, 99, 198),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Text(
                  AppStrings.enter,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 40)),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.mail_outline_outlined,
                    color: Color.fromARGB(255, 7, 99, 198),
                  ),
                  hintText: AppStrings.username,
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10))),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.lock_outline,
                    color: Color.fromARGB(255, 7, 99, 198),
                  ),
                  hintText: AppStrings.password,
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                  suffixIcon: const Icon(
                    CupertinoIcons.eye,
                    color: Color.fromARGB(255, 7, 99, 198),
                  ),
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10))),
            ),
            const Padding(padding: EdgeInsets.only(top: 10)),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  AppStrings.forgetpassword,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(148, 64, 115, 169),
                  borderRadius: BorderRadius.circular(15)),
              child: const Center(
                child: Text(
                  AppStrings.login,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1.5,
                  width: MediaQuery.of(context).size.width * 0.12,
                  color: Colors.black12,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    AppStrings.or,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 1.5,
                  width: MediaQuery.of(context).size.width * 0.12,
                  color: Colors.black12,
                ),
              ],
            ),
            const Text(
              AppStrings.otp,
              textAlign: TextAlign.center,
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Color.fromARGB(255, 7, 99, 198),
                  color: Color.fromARGB(255, 7, 99, 198),
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            const Padding(padding: EdgeInsets.only(top: 40)),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(image: AssetImage('assets/image/facebook1.png')),
                Image(image: AssetImage('assets/image/google.png')),
                Image(image: AssetImage('assets/image/linkdin.png')),
                Image(image: AssetImage('assets/image/apple.png')),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 30)),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                  text: AppStrings.account,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
              TextSpan(
                  text: AppStrings.signup,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Color.fromARGB(255, 7, 99, 198),
                    color: Color.fromARGB(255, 7, 99, 198),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ))
            ]))
          ],
        ),
      ),
    );
  }
}
