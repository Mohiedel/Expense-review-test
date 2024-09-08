import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/rewards_summary_page.dart';

void main() {
  runApp(const RewardSummary());
}

class RewardSummary extends StatelessWidget {
  const RewardSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(gi
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Reward Summary',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          backgroundColor: Colors.blue.shade900,
        ),
        body: Container(
          color: Colors.blueAccent.shade700,
          child: const Center(
            child: RewardSummaryPage(),
          ),
        ),
      ),
    );
  }
}
