import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

import './Components/mission_card.dart';

class Missions extends StatefulWidget {
  const Missions({super.key});

  @override
  State<Missions> createState() => _MissionsState();
}

class _MissionsState extends State<Missions> {

  List mTuples = [Tuple2("A","a"),Tuple2("B","b"),Tuple2("C","c")];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        for (var item in mTuples) MissionCard(mTitle: item.item1, mDesc: item.item2)
          ],
    );
  }
}
