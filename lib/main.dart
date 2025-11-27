import 'package:flutter/material.dart';
import 'pages/welcome_page.dart';

void main() {
  runApp(const AtlasGeo());
}

class AtlasGeo extends StatelessWidget {
  const AtlasGeo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
