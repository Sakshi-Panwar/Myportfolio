import 'package:flutter/material.dart';
import 'package:sakshi_website/views/home/name_widget/name_widget.dart';
import 'package:sakshi_website/views/home/Introduction/introduction.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        PictureWidget(),
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              NameWidget(),
              Expanded(
                child: Center(
                  child: IntroductionWidget(),
                ),
              )
            ]),
        Align(alignment: Alignment.bottomCenter, child: Footer()),
      ],
    );
  }
}

class PictureWidget extends StatelessWidget {
  const PictureWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Image(
        image: new AssetImage("assets/BGM.png"),
        fit: BoxFit.cover,
        color: Colors.black87.withOpacity(0.9),
        colorBlendMode: BlendMode.darken,
      ),
      desktop: Image(
        image: new AssetImage("assets/BG.jpg"),
        fit: BoxFit.cover,
        color: Colors.black87.withOpacity(0.1),
        colorBlendMode: BlendMode.darken,
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height / 6,
        width: MediaQuery.of(context).size.width - 50,
        //color: Colors.white,
        child: Text(
          "Designed & Built by Sakshi Panwar 💙 Flutter",
          style: TextStyle(
            color: Colors.white.withOpacity(0.5),
            letterSpacing: 1.5,
            fontSize: 15.0,
          ),
        ),
      ),
      mobile: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height / 6,
        width: MediaQuery.of(context).size.width - 100,
        //color: Colors.white,
        child: Text(
          "",
          style: TextStyle(
            color: Colors.white.withOpacity(0.5),
            letterSpacing: 1.5,
            fontSize: 15.0,
          ),
        ),
      ),
    );
  }
}
