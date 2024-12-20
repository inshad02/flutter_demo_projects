import 'package:flutter/material.dart';

class Toggle extends StatefulWidget {
  const Toggle({super.key});

  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  List<bool> selected = [false, false];
  String radioButton = "Select";
  String dropDown = "Select";
  bool toggleSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            ToggleButtons(
              children: [Icon(Icons.person), Icon(Icons.email)],
              isSelected: selected,
              onPressed: (int index) {
                setState(() {
                  selected[index] = !selected[index];
                });
              },
            ),
            SizedBox(
              height: 80,
            ),
            ToggleButtons(
              children: [
                Text("ON"),
                Text("OFF"),
              ],
              isSelected: [toggleSwitch, !toggleSwitch],
              onPressed: (int index) {
                setState(() {
                  // if (index == 0) {
                  //   toggleSwitch = !toggleSwitch;
                  // } else {
                  //   toggleSwitch = !toggleSwitch;
                  // }
                  toggleSwitch = index == 0;
                });
              },
            ),
            SizedBox(
              height: 80,
            ),
            RadioListTile<String>(
                title: Text("Select"),
                //subtitle: Text("Color "),
                value: '1',
                groupValue: radioButton,
                onChanged: (a) {
                  setState(() {
                    radioButton = a!;
                  });
                }),
            RadioListTile<String>(
                title: Text("Option 1"),
                //subtitle: Text("Color "),
                value: '2',
                groupValue: radioButton,
                onChanged: (a) {
                  setState(() {
                    radioButton = a!;
                  });
                }),
            RadioListTile<String>(
                title: Text("Option 2"),
                subtitle: Text("Select option 2"),
                value: '3',
                groupValue: radioButton,
                onChanged: (a) {
                  setState(() {
                    radioButton = a!;
                  });
                }),
            SizedBox(
              height: 80,
            ),
            DropdownButton<String>(
                dropdownColor: Colors.yellow,
                value: dropDown,
                icon: Icon(Icons.keyboard_arrow_down),
                items: [
                  DropdownMenuItem<String>(
                    child: Text("Select"),
                    value: 'Select',
                  ),
                  DropdownMenuItem<String>(
                    child: Text("Red"),
                    value: 'Red',
                  ),
                  DropdownMenuItem<String>(
                    child: Text("Green"),
                    value: 'Green',
                  ),
                  DropdownMenuItem<String>(
                    child: Text("Blue"),
                    value: 'Blue',
                  )
                ],
                onChanged: (String? newValue) {
                  setState(() {
                    dropDown = newValue!;
                  });
                })
          ],
        ),
      ),
    );
  }
}
