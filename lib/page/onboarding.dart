import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding_screen/page/home.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        showNextButton: true,
        showSkipButton: true,
        skip: Text('skip'),
        next: Text('Next'),
        pages: [
          PageViewModel(
            title: "Title of first page",
            bodyWidget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Click on "),
                Icon(Icons.edit),
                Text(" to edit a post"),
              ],
            ),
            image: const Center(child: Icon(Icons.android)),
          ),
          PageViewModel(
            title: "Title of second page",
            bodyWidget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Click on "),
                Icon(Icons.edit),
                Text(" to edit a post"),
              ],
            ),
            image: const Center(child: Icon(Icons.android)),
          ),
          PageViewModel(
            title: "Title of third page",
            bodyWidget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Click on "),
                Icon(Icons.edit),
                Text(" to edit a post"),
              ],
            ),
            image: const Center(child: Icon(Icons.android)),
          ),
        ],
        dotsDecorator: getDecorator(),
        done: Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
        onDone: () => goToHome(context),
      ),
    );
  }
}

DotsDecorator getDecorator() => DotsDecorator(
    color: Color(0xFFBDBDBD),
    size: Size(10, 10),
    activeSize: Size(22, 10),
    activeShape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)));

void goToHome(context) =>
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
