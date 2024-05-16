import 'package:flutter/material.dart';

import './Components/conact_form.dart';

class Support extends StatefulWidget {
  const Support({super.key});

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ContactForm(),
        ExpansionTile(
            title: Text(
              "FAQ:",
              style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),
            ),
             children:<Widget>[
               ExpansionTile(
                 title: Text(
                   "Q1",
                   style:TextStyle(fontWeight: FontWeight.w500,fontSize: 16),
                 ),
                 children: [Text("A1")],
               ),
               ExpansionTile(
                 title: Text(
                   "Q2",
                   style:TextStyle(fontWeight: FontWeight.w500,fontSize: 16),
                 ),
                 children: [Text("A2")],
               ),
               ExpansionTile(
                 title: Text(
                   "Q3",
                   style:TextStyle(fontWeight: FontWeight.w500,fontSize: 16),
                 ),
                 children: [Text("A3")],
               ),
          ],
        )
      ],
    );
  }
}