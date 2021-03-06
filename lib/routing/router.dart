import 'package:flutter/material.dart';
import 'package:sakshi_website/routing/route_names.dart';
import 'package:sakshi_website/views/about/about_view.dart';
import 'package:sakshi_website/views/home/home_view.dart';
import 'package:sakshi_website/views/Experience/experience_view.dart';
import 'package:sakshi_website/views/Project/project_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  print('generateRoute: ${settings.name}');
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    case ExperienceRoute:
      return _getPageRoute(ExperienceView());
    case ProjectRoute:
      return _getPageRoute(ProjectView());
    default:
      return _getPageRoute(HomeView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(
    child: child,
  );
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({this.child})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    child,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        FadeTransition(
          opacity: animation,
          child: child,
        ),
  );
}