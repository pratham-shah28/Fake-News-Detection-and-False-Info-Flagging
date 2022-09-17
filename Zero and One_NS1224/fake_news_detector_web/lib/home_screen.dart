import 'dart:developer';

import 'package:fake_news_detector_web/processing_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool validated = false;
  bool twitter = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final formKey = GlobalKey<FormState>();
    String webUrl = '';
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: screenSize.height,
            width: screenSize.width,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0XFF002B5B),
                Color(0XFF2B4865),
                // Color(0XFF256D85),
                Color(0XFF8FE3CF),
              ],
            )),
          ),
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(top: 80),
            child: Text(
              twitter ? 'Information Flagger' : 'News Authenticator',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'Inter',
                fontSize: 80,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              height: 80,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Form(
                      key: formKey,
                      child: TextFormField(
                        validator: (value) {
                          setState(() {
                            validated = true;
                          });

                          final regexStr = RegExp(
                              r'(?:(?:https?|ftp):\/\/)?[\w\/\-?=%.]+\.[\w\/\-?=%.]+');
                          if (value!.trim().toString().isEmpty) {
                            snackbar(msg: 'Please enter URL');
                            setState(() {
                              validated = false;
                            });
                            return null;
                          }
                          if (!regexStr.hasMatch(value.trim().toString())) {
                            snackbar(msg: 'Please enter a valid URL');
                            setState(() {
                              validated = false;
                            });
                            return null;
                          }
                          return null;
                        },
                        onChanged: (value) => webUrl = value.trim().toString(),
                        maxLines: 1,
                        maxLength: 200,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: twitter
                              ? 'Enter a policy to search'
                              : 'Paste or enter new URL',
                          hintStyle: const TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 30,
                            color: Colors.white,
                          ),
                          contentPadding: const EdgeInsets.only(
                              left: 60, right: 160, top: 40),
                          counterText: '',
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                        style: const TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.search_rounded,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        formKey.currentState?.validate();
                        if (validated) {
                          Get.off(
                            () => ProcessingScreen(
                              webUrl: webUrl,
                            ),
                            transition: Transition.rightToLeftWithFade,
                            duration: const Duration(milliseconds: 500),
                          );
                        } else {
                          log('error');
                        }
                      },
                      splashColor: Colors.blueAccent,
                      child: Container(
                        width: 150,
                        height: 67,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: Colors.white),
                        alignment: Alignment.center,
                        child: const Text(
                          'Search',
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Inter',
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: screenSize.height / 2 + 60,
            left: screenSize.width / 2 - 80,
            child: FlutterSwitch(
              onToggle: (val) => setState(() {
                twitter = val;
              }),
              padding: 10,
              value: twitter,
              height: 100,
              width: 200,
              inactiveColor: const Color(0XFF002B5B),
              activeColor: const Color(0XFF8FE3CF),
              activeText: 'Fake News Detector',
              inactiveText: 'Fake Information Flagger',
              activeTextColor: Colors.white,
              inactiveTextColor: Colors.white,
              showOnOff: true,
            ),
          ),
          // Container(
          //   alignment: Alignment.bottomCenter,
          //   child: InkWell(
          //     onTap: () {},
          //     child: Image.asset(
          //       'assets/images/gplay.png',
          //       height: 100,
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }

  void snackbar({
    String title = '',
    required String msg,
  }) {
    Get.snackbar(
      '',
      '',
      titleText: title == '' ? const SizedBox.shrink() : Text(title),
      messageText: Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Text(
          msg,
          style: TextStyle(
            fontSize: 18,
            fontWeight: title == '' ? FontWeight.w500 : FontWeight.normal,
          ),
        ),
      ),
      borderRadius: 20,
      borderWidth: 1,
      borderColor: Colors.black26,
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(13),
      backgroundColor: Colors.white,
      shouldIconPulse: true,
      icon: const Padding(
        padding: EdgeInsets.all(13),
        child: Icon(
          Icons.error_outline_rounded,
          color: Colors.redAccent,
          size: 45,
        ),
      ),
    );
  }
}
