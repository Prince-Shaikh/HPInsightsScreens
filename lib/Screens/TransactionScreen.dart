import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Transaction History")),
      ),
      body: DefaultTabController(
        length: 2,
        child: TabBar(
          tabs: [Text("Completed Payouts"), Text("Upcoming Payouts")],
        ),
      ),
    );
  }
}
