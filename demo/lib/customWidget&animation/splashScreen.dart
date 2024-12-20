import 'package:demo/customWidget&animation/loginPage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => CustomLogin()));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
            "https://img.freepik.com/free-photo/shopping-cart-3d-render-icon_460848-6902.jpg?t=st=1731559205~exp=1731562805~hmac=af24f4b37ddb658e08711637755334b2c67699ef5e29db72cd0b49dfe6526bb9&w=826"),
      ),
    );
  }
}
