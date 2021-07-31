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
            padding: const EdgeInsets.only(top: 22, left: 30),
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
          Container(
            height: MediaQuery.of(context).size.height * 0.45,
            child: GridView.count(
              childAspectRatio: 0.35,
              // mainAxisSpacing: 5,
              crossAxisSpacing: 10,
              crossAxisCount: 3,
              padding: EdgeInsets.all(0),
              scrollDirection: Axis.horizontal,
              children: opportunities_data.map((value) {
                return Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: ListTile(
                    // tileColor: Colors.red,
                    minVerticalPadding: 0,
                    contentPadding:
                        EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 0),
                    leading: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: NetworkImage(
                              'https://static.vecteezy.com/system/resources/thumbnails/002/884/959/small/people-use-smartphones-to-receive-news-in-their-daily-life-vector.jpg'),
                        )),
                    title: Text(
                      value,
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                );
              }).toList(),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical:30.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [Text("5.0",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),), Icon(Icons.star)],
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Overall Rating",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
                Column(
                  children: [],
                ),
                Column(
                  children: [],
                )
              ],
            ),
          ),
          Divider(
            thickness: 2,
          )
        ],
      ),
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
