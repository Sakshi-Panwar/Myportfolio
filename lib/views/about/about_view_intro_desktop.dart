import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:sakshi_website/widgets/custom_text/CustomText.dart';

class IntroductionAboutDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.65;
    double c_height = MediaQuery.of(context).size.height * 0.8;
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 20, 25, 0),
      width: c_width,
      height: c_height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Flexible(child: Introduction()),
        ],
      ),
    );
  }
}

class Introduction extends StatelessWidget {
  const Introduction({
    Key key,
  }) : super(key: key);

  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: Color(0xff64FFDA).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        Text(
          text,
          style: TextStyle(
            color: Color(0xff717C99),
            letterSpacing: 1.0,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final AboutintroWidget = "Sakshi is a 3rd-year student at Mahindra University pursuing the Computer Science and Engineering branch. "
            "Sakshi is highly interested and working hard to upskill her in Computer Science"
            " and is constantly making her way to new concepts and grab knowledge every day through hard work and dedication "
            "to improve herself to succeed in the future.\n\n"
            "She is also art enthusiast who like to play around colours and designs ;)\n"
            "Currently, Sakshi is learning Machine Learning & Artificial Intelligence and working on Object Dectection project. "
            "She is skilled in making Android, Web, and Desktop apps using Flutter and Dart. She is also grasping an understanding of arduino and other electronic platforms."
            " She also believes in giving back to the community; therefore, she is preparing to make Open Source contributions by participating in Google Summer of Code and many renowned Hackathons across the Globe."
            " She is also interested in Competetive Coding is trying to improve his skills through hackerrank and other platforms.\n"
            " Sakshi is also part of various clubs such as Enigma(CSE) and Zenith(Science) club ."
            " Sakshi has extensive experience working both alone and as part of a team on often time-sensitive, challenging web development projects that require outstanding creative and technical capabilities and the ability to ensure all work is optimized across a wide range of platforms. She takes her work seriously and will ensure that her skills are uptodate. If given opportunity, She assures she will fit into the team quickly and give best possible output.”\n\n"
            "Developing ways of success....Sakshi!"
        .text
        .gray500
        .sm
        .make()
        .w(context.isMobile ? context.screenWidth : context.percentWidth * 40);
    return ListView(children: <Widget>[
      // Flexible(child: AboutintroWidget),
      AboutintroWidget,
      SizedBox(
        height: 20,
      ),
      CustomText(
        text: "Here are a few technologies I've been working with recently:\n",
        textsize: 16.0,
        color: Color(0xff828DAA),
        fontWeight: FontWeight.w500,
        // letterSpacing: 0.2,
      ), // crossAlignment: CrossAxisAlignment.center,
      Container(
        // height: size.height * 0.20,
        width: size.width,
        //   color: Colors.redAccent,
        child: Row(
          children: [
            Container(
              width: size.width * 0.18,
              // height: size.height * 0.25,
              child: Column(
                children: [
                  technology(context, "Flutter"),
                  technology(context, "Dart"),
                  technology(context, "Python"),
                  technology(context, "UI/UX - Adobe XD"),
                  technology(context, "C"),
                ],
              ),
            ),
            Container(
              width: size.width * 0.18,
              // height: size.height * 0.25,
              child: Column(
                children: [
                  technology(context, "React"),
                  technology(context, "JavaScript"),
                  technology(context, "Java"),
                  technology(context, "Machine Learning & AI"),
                ],
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
