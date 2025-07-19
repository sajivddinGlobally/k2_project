import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:k2_app/screen/start.page.dart';

class ZoomFadeImageAnimation extends StatefulWidget {
  @override
  _ZoomFadeImageAnimationState createState() => _ZoomFadeImageAnimationState();
}

class _ZoomFadeImageAnimationState extends State<ZoomFadeImageAnimation>
    with TickerProviderStateMixin {
  late AnimationController _zoomController;
  late AnimationController _fadeController;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    // Zoom animation
    _zoomController = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 1, end: 1.7).animate(
      CurvedAnimation(parent: _zoomController, curve: Curves.easeInOutQuart),
    );
    // Fade-in animation
    _fadeController = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1,
    ).animate(CurvedAnimation(parent: _fadeController, curve: Curves.easeIn));

    _zoomController.forward();

    // Delay before fading in second image
    Future.delayed(Duration(seconds: 3), () {
      _fadeController.forward();
    }).then((_) {});
    Future.delayed(
      Duration(seconds: 5),
      () => Navigator.push(
        context,
        CupertinoPageRoute(builder: (context) => StartPage()),
      ),
    );
  }

  @override
  void dispose() {
    _zoomController.dispose();
    _fadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            ScaleTransition(
              scale: _scaleAnimation,
              child: Image.asset(
                'assets/image1.png', // ✅ Your first image
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.fill,
              ),
            ),
            FadeTransition(
              opacity: _fadeAnimation,
              child: Image.asset(
                'assets/splashLogo.png', // ✅ Second image that fades in
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
