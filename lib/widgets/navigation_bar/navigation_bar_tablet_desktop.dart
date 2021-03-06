import 'package:flutter/material.dart';
import 'package:sakshi_website/Colors/colors.dart';
import 'package:sakshi_website/routing/route_names.dart';
import 'package:sakshi_website/widgets/navigation_bar/navbar_item.dart';
import 'package:sakshi_website/widgets/navigation_bar/navbar_logo.dart';
import 'package:sakshi_website/extensions/hover_extensions.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      height: 82,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              NavBarLogo(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  NavBarItem('Home', HomeRoute).moveUpOnHover,
                  SizedBox(
                    width: 60,
                  ),
                  NavBarItem('About', AboutRoute).moveUpOnHover,
                  SizedBox(
                    width: 60,
                  ),
                  NavBarItem('Experience', ExperienceRoute).moveUpOnHover,
                  SizedBox(
                    width: 60,
                  ),
                  NavBarItem('Projects', ProjectRoute).moveUpOnHover,
                ],
              )
            ]),
      ),
    );
  }
}
