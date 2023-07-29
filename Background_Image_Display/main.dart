import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BAckGround Image Checker",
      home: SingleScreen(),
    );
  }
}

class SingleScreen extends StatefulWidget {
  const SingleScreen({Key? key}) : super(key: key);

  @override
  State<SingleScreen> createState() => _SingleScreenState();
}

class _SingleScreenState extends State<SingleScreen> {
  final PageController _pageController = PageController();
  int currIndex = 0;
  @override
  void initState() {
    final _pageController = PageController(initialPage: 0);
    super.initState();
  }

  void dispose() {
    _pageController.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20, top: 20),
            child: Text(
              "Skip",
              style: TextStyle(
                color: ColorsSys.primary,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          PageView(
            onPageChanged: (int page) {
              setState(() {
                currIndex = page;
              });
            },
            controller: _pageController,
            children: [
              makePage(
                image: 'images/steponeimage.jpg',
                title: Strings.stepOneTitle,
                content: Strings.stepOneContent,
              ),
              makePage(
                reverse: true,
                image: 'images/steptwoimage.jpg',
                title: Strings.stepTwoTitle,
                content: Strings.stepTwoContent,
              ),
              makePage(
                image: 'images/stepthreeimage.jpg',
                title: Strings.stepThreeTitle,
                content: Strings.stepThreeContent,
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildIndicator(),
              ))
        ],
      ),
    );
  }

  Widget makePage({image, title, content, reverse = false}) {
    return Container(
      padding: EdgeInsets.only(right: 50, left: 50, top: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          !reverse
              ? Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Image.asset(image),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                )
              : SizedBox(),
          Text(
            title,
            style: TextStyle(
              color: ColorsSys.primary,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            content,
            style: TextStyle(
                color: ColorsSys.gray,
                fontSize: 20,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          reverse
              ? Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Image.asset(image),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                )
              : SizedBox(),
        ],
      ),
    );
  }

  Widget _indictor(bool isActive) {
    return AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height: 8,
        width: isActive ? 30 : 8,
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          color: ColorsSys.snd1,
          borderRadius: BorderRadius.circular(5),
        ));
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 3; i++) {
      if (currIndex == i) {
        indicators.add(_indictor(true));
      } else {
        indicators.add(_indictor(false));
      }
    }
    return indicators;
  }
}

class ColorsSys {
  static Color primary = Color.fromRGBO(52, 43, 37, 1);
  static Color gray = Color.fromRGBO(137, 137, 137, 1);
  static Color snd1 = Color.fromRGBO(198, 116, 27, 1);
  static Color snd2 = Color.fromRGBO(226, 185, 141, 1);
}

class Strings {
  static var stepOneTitle = "FarmDriving";
  static var stepOneContent =
      "There are all kinds of equipment to build farm better harvest";
  static var stepTwoTitle = "PlantGrowing";
  static var stepTwoContent =
      "Be part of agriculture and gives you the team the power you need to do something";
  static var stepThreeTitle = "FastHarvesting";
  static var stepThreeContent =
      "You will be proud to be part to be part of agriculture and it's harvest";
}
