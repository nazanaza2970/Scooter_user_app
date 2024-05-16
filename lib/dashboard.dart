import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import './Components/stats_card.dart';
import './Components/stats_grid.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {

    // final List<String> StatList = ['Stat1','Stat2','Stat3','Stat4'];

    return ListView(
        shrinkWrap: true,
        children: const <Widget>[
          StatsCard(),
          StatsGrid(statName: "Battery Percentage",statValue: "value_1",),
          StatsGrid(statName: "Range",statValue: "value_2",),
          StatsGrid(statName: "Speed",statValue: "value_3",),
          StatsGrid(statName: "Driving Mode", statValue: "value_4",)
          // StatsGrid(statName: "Stat_4",statValue: "value_4",)
        ],
    );
  }
}