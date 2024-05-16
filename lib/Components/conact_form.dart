import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  var items=[
    "item1",
    "item2",
    "item3"
  ];
  late String dvalue = items[0];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Select type of your query:",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                )
            ),
            DropdownButton(
              value: dvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dvalue = newValue!;
                });
              },
            )
          ],
        ),

        Padding(
            padding: EdgeInsets.all(10),
            child: SizedBox(
              height: 350,
              child: TextField(
                maxLines: null,
                expands: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // contentPadding: EdgeInsets.symmetric(vertical: 100.0)
                ),
              ),
            )
        ),

        FilledButton(onPressed: (){}, child: Text("Submit"))

      ],
    );
  }
}
