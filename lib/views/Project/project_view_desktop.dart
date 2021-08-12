import 'package:flutter/material.dart';
import 'package:sakshi_website/Colors/colors.dart';
import 'package:sakshi_website/views/Project/FeatureProjectInvertedWidget.dart';
import 'package:sakshi_website/views/Project/FeatureProjectWidget.dart';
import 'package:sakshi_website/widgets/method/method.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:sakshi_website/extensions/hover_extensions.dart';

class ProjectViewDesktop extends StatelessWidget {
  const ProjectViewDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProjectTitle = "--- Some Things I've Built ---"
        .text
        .white
        .xl
        .lineHeight(1.3)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();
    return Container(
      // color: Color(0xff0A192F),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.88,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(0, 10, 0, 40),
          //   child: Align(
          //     alignment: Alignment.topCenter,
          //     child: ProjectTitle,
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Projects(),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: ProjectTitle,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Projects extends StatelessWidget {
  Method method = Method();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        SizedBox(
          height: size.height * 0.04,
        ),
        FeatureProject(
          imagePath: "assets/college.png",
          ontab: () {
            method.launchURL(
                "https://github.com/anurag-tekale/Mec_Management_AppUI");
          },
          projectDesc: "A simple college management app.",
          projectTitle: "College Management App",
          tech1: "Flutter",
          tech2: "Dart",
          tech3: "Web Development",
        ),
        FeatureProjectInverted(
          imagePath: "assets/Portfolio.png",
          ontab: () {
            method.launchURL("https://github.com/Sakshi-Panwar/Myportfolio");
          },
          projectDesc: "My Portfolio website created using Flutter",
          projectTitle: "Portfolio",
          tech1: "Flutter",
          tech2: "Dart",
          tech3: "Web Development",
        ),
        FeatureProject(
          imagePath: "assets/ac.jpg",
          ontab: () {
            method.launchURL("");
          },
          projectDesc: "Project on Air Conditioning of classrooms ",
          projectTitle: "Thermodynamic Project",
          // tech1: "Flutter",
          // tech2: "Dart",
          // tech3: "Web Development",
        ),
        FeatureProjectInverted(
          imagePath: "assets/covid.png",
          ontab: () {
            method.launchURL(
                "https://github.com/Sakshi-Panwar/Covid-resources-management");
          },
          projectDesc:
              "Website frontend created using java to find covid related help and resources",
          projectTitle: "Covid Resources Management",
          tech1: "Java",
          // tech2: "Dart",
          //   tech3: "Web Development",
        ),

         FeatureProject(
          imagePath: "assets/ruhack.jpg",
          ontab: () {
            method.launchURL("https://devpost.com/software/connect-0qgxr8");
          },
          projectDesc: "Website to help people in studying and connect with others",
          projectTitle: "RU-Hackathon Connect",
           tech1: "Flutter",
           tech2: "Dart",
           tech3: "Web Development",
        ),
        LimitedBox(
          maxWidth: 50,
          child: RaisedButton(
            onPressed: () {
              launch("https://github.com/Sakshi-Panwar");
            },
            hoverColor: Vx.purple700,
            shape: Vx.roundedSm,
            color: Coolors.accentColor,
            textColor: Coolors.primaryColor,
            child: "View More".text.bold.make(),
          ).h(50).w(50),
        ).showCursorOnHover.moveUpOnHover,
      ],
    );
  }
}
