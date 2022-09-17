import 'dart:developer';
import 'dart:io';

import 'package:fake_news_detector_web/final_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ProcessingScreen extends StatelessWidget {
  const ProcessingScreen({super.key, required this.webUrl});

  final String webUrl;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
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
          FutureBuilder(
              future: checkFactArticle(webUrl),
              builder: (context, state) {
                if (state.connectionState == ConnectionState.done) {
                  Future.delayed(
                    const Duration(milliseconds: 300),
                    () => Get.off(
                      () => FinalScreen(fakeNews: state.data!),
                      transition: Transition.rightToLeftWithFade,
                      duration: const Duration(milliseconds: 500),
                    ),
                  );
                } else {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        margin: const EdgeInsets.only(top: 80),
                        child: const Text(
                          'News Authenticator',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 80,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          'assets/images/search.gif',
                          width: screenSize.height / 2,
                        ),
                      ),
                      const Text(
                        'Analyzing Information\n&\nChecking Credibility',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      )
                    ],
                  );
                }
                return Container();
              })
        ],
      ),
    );
  }

  Future<bool> checkFactArticle(String url) async {
    String baseUrl =
        'https://fake-news-detection-api-sih.herokuapp.com/fakeNewsDetector/search?webUrl=$url';

    final response =
        await http.get(Uri.parse(baseUrl)).onError((error, stackTrace) {
      log(error.toString());
      throw HttpException(stackTrace.toString());
    });

    var data = response.body.toString();
    log(data);

    try {
      data = data.replaceAll('\'', '');
      data = data.replaceAll('"', '');
      data = data.replaceAll('{', '');
      data = data.replaceAll('}', '');
      data = data.replaceAll(':', '');
      data = data.replaceAll('fakeNews', '');
      data = data.trim();
    } catch (e) {
      log(e.runtimeType.toString());
    }

    return data == '0';
  }
}
