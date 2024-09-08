import 'package:flutter/material.dart';
import 'cashback_history.dart';

class HistoryList extends StatelessWidget {
  final List<History> cashbackHistory;

  const HistoryList({super.key, required this.cashbackHistory});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: cashbackHistory.length,
        itemBuilder: (context, index) {
          var transaction = cashbackHistory[index];
          return ListTile(
            leading: const Icon(Icons.monetization_on),
            title: Text('Booking ID: ${transaction.bookingId}'),
            subtitle: Text(
                'Amount: \$${transaction.amount} | Date: ${transaction.date}'),
          );
        },
      ),
    );
  }
}
