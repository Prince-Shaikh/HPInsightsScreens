import 'package:flutter/material.dart';
import 'package:insight_screens/data.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Transaction History",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              indicatorColor: Colors.black,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey[600],
              labelPadding:
                  EdgeInsets.only(top: 15, bottom: 15, right: 0, left: 0),
              // indicatorPadding: EdgeInsets.symmetric(vertical:20),
              tabs: [Text("Completed Payouts"), Text("Upcoming Payouts")],
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: TabBarView(
                  children: [
                    getTransactionsWidget(),
                    getUpcomingTransactionsWidget()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  getTransactionsWidget() {
    if (completedPayouts_name.length == 0) {
      return Text("No Completed Transactions");
    }
    return ListView.builder(
        itemCount: completedPayouts_name.length,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text(
              completedPayouts_name[i],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(completedPayouts_date[i].toString()) ,
            trailing: Text(
                    "\$" + completedPayouts_amount[i].toString(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
          );
        });
  }

  getUpcomingTransactionsWidget() {
    if (upcomingPayouts_name.length == 0) {
      return Text("No Completed Transactions");
    }
    return ListView.builder(
        itemCount: upcomingPayouts_name.length,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text(
              upcomingPayouts_name[i],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(upcomingPayouts_date[i].toString()) ,
            trailing: Text(
                    "\$" + upcomingPayouts_amount[i].toString(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
          );
        });
  }
}
