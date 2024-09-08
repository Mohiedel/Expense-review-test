import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/cashback/cashback_history.dart';
import 'package:untitled1/cashback/cashback_history_list.dart';
import 'package:untitled1/earnings.dart';
import 'package:untitled1/cashout.dart';

import 'Data/data_file.dart';

class RewardSummaryPage extends StatefulWidget {
  const RewardSummaryPage({super.key});

  @override
  State<RewardSummaryPage> createState() => _RewardSummaryPageState();
}

class _RewardSummaryPageState extends State<RewardSummaryPage> {

  bool isLoading = false;

  void cashOut() {
    setState(() {
      isLoading = true;
    });

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Cash Out Successful!'),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rewards Summary')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EarningsSection(totalEarnings: totalEarnings),
            const SizedBox(height: 20),
            const Text(
              'Cashback History',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            HistoryList(cashbackHistory: cashbackHistory),
            const SizedBox(height: 20),
            CashoutSection(isLoading: isLoading, cashOut: cashOut),
          ],
        ),
      ),
    );
  }
}

