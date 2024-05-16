import 'package:flutter/material.dart';

class StatsGrid extends StatefulWidget {
  final String statName;
  final String statValue;
  const StatsGrid({super.key, required this.statName, required this.statValue});

  @override
  State<StatsGrid> createState() => _StatsGridState();
}

class _StatsGridState extends State<StatsGrid> {
  late String sName = widget.statName;
  late String sValue = widget.statValue;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 30,
      shadowColor: Colors.grey,
      color: Colors.white,
      child: SizedBox(
        width: double.infinity,
        height: 70,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                sName,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                sValue,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),//Text
            ],
          ),
        ), //Padding
      ), //SizedBox
    );
  }
}
