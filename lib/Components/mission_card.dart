import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MissionCard extends StatefulWidget {
  final String mTitle;
  final String mDesc;
  const MissionCard({super.key, required this.mTitle, required this.mDesc});

  @override
  State<MissionCard> createState() => _MissionCardState();
}

class _MissionCardState extends State<MissionCard> {

  late String mTitle = widget.mTitle;
  late String mDesc = widget.mDesc;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shadowColor: Colors.grey,
      color: Colors.white,
      child: SizedBox(
        width: double.infinity,
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mTitle,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                mDesc,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),//Text
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black54,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),

                    onPressed: (){},
                    child: const Text(
                        "Start",
                      style: TextStyle(
                        color: Colors.orangeAccent,
                      ),
                    ),
                ),
              )
            ],
          ),
        ), //Padding
      ), //SizedBox
    );
  }
}
