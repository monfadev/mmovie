import 'package:flutter/material.dart';

final navigate = NavigationUtil.instance;

class NavigationUtil {
  NavigationUtil._private();

  static NavigationUtil instance = NavigationUtil._private();

  factory NavigationUtil() {
    return instance;
  }

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> pushTo(String routeName, {dynamic data}) => navigatorKey.currentState!.pushNamed(routeName, arguments: data);
  Future<dynamic> pushToReplacement(String routeName, {dynamic data}) => navigatorKey.currentState!.pushReplacementNamed(routeName, arguments: data);
  Future<dynamic> pushToRemoveUntil(String routeName, {dynamic data}) => navigatorKey.currentState!.pushNamedAndRemoveUntil(routeName, (route) => false, arguments: data);
  dynamic pop({dynamic data}) => navigatorKey.currentState!.pop(data);
}
