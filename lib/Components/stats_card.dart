import 'package:flutter/material.dart';

class StatsCard extends StatefulWidget {
  const StatsCard({super.key});

  @override
  State<StatsCard> createState() => _StatsCardState();
}

class _StatsCardState extends State<StatsCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 30,
      shadowColor: Colors.black,
      color: Colors.black26,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 400,
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blueGrey,
                radius: 80,
                child: CircleAvatar(
                  backgroundImage: AssetImage('./assets/images/scooterlab_logo.png'), //NetworkImage
                  radius: 75,
                ), //CircleAvatar
              ), //CircleAvatar
              SizedBox(
                height: 10,
              ), //SizedBox
              Text(
                'ScooterLab',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.w600,
                ),
              ), //Text
              SizedBox(
                height: 10,
              ), //SizedBox
              Text(
                'We are proud to have you on board!',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ), //Text
              SizedBox(
                height: 10,
              ), //SizedBox
            ],
          ), //Column
        ), //Padding
      ), //SizedBox
    );
  }
}
