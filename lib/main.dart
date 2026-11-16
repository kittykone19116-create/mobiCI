import 'package:flutter/material.dart';
import 'pages/resultats_itineraire_page.dart';

void main() {
  runApp(const MobiCIApp());
}

class MobiCIApp extends StatelessWidget {
  const MobiCIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MobiCI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFF77F00)),
        useMaterial3: true,
      ),
                  home: const ResultatsItinerairePage(),
    );
  }
}