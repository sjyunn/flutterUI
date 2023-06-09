import 'package:flutter/material.dart';
import 'package:uitestapp/widgets/button.dart';
import 'package:uitestapp/widgets/button_tes.dart';
import 'package:uitestapp/widgets/control_card.dart';
import 'package:uitestapp/widgets/notice.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSwatch(backgroundColor: const Color(0xFFE7626C)),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      home: const Scaffold(
        backgroundColor: Color(0xFF181818),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Notice(
                      isConnected: true,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Healing Fit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Mobifren',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonTes(isStarted: true),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              ControlCard(
                name: '모드전환',
                code: '힐링모드',
                icon_left: Icons.arrow_circle_left_outlined,
                icon_right: Icons.arrow_circle_right_outlined,
                isInverted: true,
              ),
              SizedBox(
                height: 5,
              ),
              ControlCard(
                name: '테라피 작동 시간',
                code: '30분',
                icon_left: Icons.arrow_circle_down_outlined,
                icon_right: Icons.arrow_circle_up_outlined,
                isInverted: true,
              ),
              SizedBox(
                height: 5,
              ),
              ControlCard(
                name: 'TES 세기',
                code: '3단계',
                icon_left: Icons.arrow_circle_down_outlined,
                icon_right: Icons.arrow_circle_up_outlined,
                isInverted: true,
              ),
              SizedBox(
                height: 5,
              ),
              ControlCard(
                name: '볼륨 세기',
                code: '5단계',
                icon_left: Icons.arrow_circle_down_outlined,
                icon_right: Icons.arrow_circle_up_outlined,
                isInverted: true,
              ),
              SizedBox(
                height: 5,
              ),
              ControlCard(
                name: '곡 변경',
                code: '숲속의 아침',
                icon_left: Icons.arrow_circle_left_outlined,
                icon_right: Icons.arrow_circle_right_outlined,
                isInverted: true,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                    text: '사용법 보기',
                    bgColor: Colors.lime,
                    textColor: Colors.black,
                  ),
                  Button(
                    text: ' 체험 리뷰 ',
                    bgColor: Colors.lime,
                    textColor: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
