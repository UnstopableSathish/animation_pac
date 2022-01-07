import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Demo(),
    );
  }
}

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  TextStyle textStyle = TextStyle(
      fontSize: 30.0, color: Colors.white, fontWeight: FontWeight.w900);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'This',
                    style: textStyle,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  RotateAnimatedTextKit(
                    text: [
                      'is Awesome',
                      'is so Cool',
                    ],
                    textStyle: textStyle,
                    isRepeatingAnimation: true,
                    repeatForever: true,
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              child: ScaleAnimatedTextKit(
                text: [
                  'List will',
                  'Scale',
                  'See it',
                ],
                textStyle: textStyle,
                totalRepeatCount: 10,
                scalingFactor: 20.0,
                repeatForever: true,
                isRepeatingAnimation: true,
              ),
            ),
            Container(
              height: 100,
              child: TypewriterAnimatedTextKit(
                text: [
                  'Animated text',
                  'Vicky Sathish Nandhini Barath Mani',
                ],
                textStyle: textStyle,
                repeatForever: true,
                isRepeatingAnimation: true,
              ),
            ),
            Container(
              height: 100,
              child: WavyAnimatedTextKit(
                text: [
                  'This is animated packages',
                ],
                textStyle: textStyle,
                isRepeatingAnimation: true,
                repeatForever: true,
              ),
            ),
            Container(
              height: 100,
              child: ColorizeAnimatedTextKit(
                text: [
                  'pub packages',
                ],
                textStyle: textStyle,
                colors: [
                  Colors.red,
                  Colors.yellow,
                  Colors.lightBlue,
                  Colors.pinkAccent,
                ],
                isRepeatingAnimation: true,
                repeatForever: true,
              ),
            ),
            Container(
              height: 100,
              child: FadeAnimatedTextKit(
                text: [
                  'Lets Go',
                  '& Develop',
                ],
                textStyle: textStyle,
                totalRepeatCount: 10,
                isRepeatingAnimation: true,
                repeatForever: true,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
