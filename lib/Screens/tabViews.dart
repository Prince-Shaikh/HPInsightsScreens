import 'package:flutter/material.dart';
import 'package:insight_screens/data.dart';

class OpportunitiesView extends StatelessWidget {
  const OpportunitiesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 22,left: 30),
            child: Text(
              "Resources for hosting now",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left:30.0),
              child: GridView.count(
                childAspectRatio: 0.4,
                // mainAxisSpacing: 5,
                // crossAxisSpacing: 20,
                crossAxisCount: 3,
                padding: EdgeInsets.all(0),
                scrollDirection: Axis.horizontal,
                children: opportunities_data.map((value) {
                  return ListTile(
                    // tileColor: Colors.red,
                    minVerticalPadding: 0,
                    contentPadding: EdgeInsets.only(top: 0, left: 0, right: 50,bottom: 0),
                    leading: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: NetworkImage(
                              'https://static.vecteezy.com/system/resources/thumbnails/002/884/959/small/people-use-smartphones-to-receive-news-in-their-daily-life-vector.jpg'),
                        )),
                    title: Text(
                      value,
                      style: TextStyle(fontSize: 20),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),      
        ],
      ),
    );
  }
}

class StatsView extends StatelessWidget {
  const StatsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Stats"),
    );
  }
}

class CleaningView extends StatelessWidget {
  const CleaningView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Cleaning"),
    );
  }
}
