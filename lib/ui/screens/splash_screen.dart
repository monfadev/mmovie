import 'package:flutter/material.dart';
import 'package:mmovie/ui/routes/route_list.dart';

import '../../core/utils/navigation/navigations.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initialize() {
    Future.delayed(const Duration(seconds: 2), () {
      navigate.pushToRemoveUntil(routeMain);
    });
  }

  @override
  void initState() {
    super.initState();
    initialize();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Splash Screen"),
      ),
    );
  }
}
