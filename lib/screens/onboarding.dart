import 'package:flutter/material.dart';
import 'package:seven_food_test/commons/onboarding_model.dart';
import 'package:seven_food_test/constants.dart';
import 'package:seven_food_test/custom_rounded_button.dart';
import 'package:seven_food_test/res/app_colors.dart';
import 'package:seven_food_test/main.dart';
import 'package:seven_food_test/screens/login_screen.dart';

class OnBoarding extends StatefulWidget {
  static const id = 'onboarding';
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentIndex = 0;
  PageController? _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        itemCount: contents.length,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (_, i) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  contents[i].backgroundImage!,
                ),
              ),
            ),
            child: Container(
              color: AppColors.black.withOpacity(0.48),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 68,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        contents.length,
                        (index) => buildDot(index, context),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      contents[i].title!,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(
                      height: 552,
                    ),
                    CustomRoundedButton(
                      colour: AppColors.primary,
                      widthButton: double.infinity,
                      heightButton: 56,
                      title: 'Далее',
                      style: Constants.kOnBoardingButtonTextStyle,
                      onPressed: () {
                        if (currentIndex == contents.length - 1) {
                          Navigator.pushNamed(context, LoginScreen.id);
                        }
                        _controller!.nextPage(
                            duration: Duration(milliseconds: 2),
                            curve: Curves.bounceIn);
                      },
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 48 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(56),
        color: currentIndex == index
            ? AppColors.primary
            : Colors.white.withOpacity(0.24),
      ),
    );
  }
}
