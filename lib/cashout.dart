import 'package:flutter/material.dart';

class CashoutSection extends StatelessWidget {
  final bool isLoading;
  final VoidCallback cashOut;

  CashoutSection({super.key, required this.isLoading, required this.cashOut});

  // This method shows a dialog asking for the cashout amount
  void _showCashoutDialog(BuildContext context) {
    TextEditingController _amountController = TextEditingController(); // Controller for input

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Cash Out'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('How much do you want to cash out?'),
              SizedBox(height: 10),
              TextField(
                controller: _amountController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter amount',
                ),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
            ElevatedButton(
              child: Text('Confirm'),
              onPressed: () {
                String amount = _amountController.text; // Get the input amount
                if (amount.isNotEmpty) {
                  // Perform your cash out action here
                  print("Cash out amount: $amount");
                  cashOut(); // Call the cash out callback
                }
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: isLoading
              ? null
              : () {
            _showCashoutDialog(context); // Show the dialog when button is pressed
          },
          child: isLoading
              ? SizedBox(
            height: 16.0,
            width: 16.0,
            child: CircularProgressIndicator(
              strokeWidth: 2.0,
              color: Colors.white,
            ),
          )
              : Text('Cash Out'),
        ),
        OutlinedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Promo Code Applied!'),
            ));
          },
          child: Text('Apply Promo Code'),
        ),
      ],
    );
  }
}

