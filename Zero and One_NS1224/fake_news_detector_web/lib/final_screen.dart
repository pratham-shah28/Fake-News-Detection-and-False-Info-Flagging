import 'package:fake_news_detector_web/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FinalScreen extends StatelessWidget {
  const FinalScreen({super.key, required this.fakeNews});

  final bool fakeNews;

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
          Column(
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
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: !fakeNews
                    ? Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'Provided link contains fake news',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 35,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      )
                    : Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'Provided link contains true news',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 35,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: () => Get.off(
                    const HomeScreen(),
                    transition: Transition.leftToRightWithFade,
                    duration: const Duration(milliseconds: 500),
                  ),
                  child: Container(
                    width: 200,
                    height: 60,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                    ),
                    child: const Text(
                      'Search Again',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              )
            ],
          )
        ],
      ),
    );
  }
}
