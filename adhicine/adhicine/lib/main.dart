import "package:flutter/material.dart";
import "package:adhicine/view/sign_in_screen.dart";

void main() {
  runApp(const AdhicineApp());
}

class AdhicineApp extends StatelessWidget {
  const AdhicineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInPage(), 
    );
  }
}