import 'package:flutter/material.dart';

class EarningsSection extends StatelessWidget {
  final double totalEarnings;

  const EarningsSection({super.key, required this.totalEarnings});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Total Earnings',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        AnimatedContainer(
          duration: const Duration(seconds: 2),
          curve: Curves.easeIn,
          child: Text(
            '\$${totalEarnings.toStringAsFixed(2)}',
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
