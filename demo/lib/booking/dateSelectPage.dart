import 'package:demo/booking/confirm.dart';
import 'package:flutter/material.dart';

class SelectorPage extends StatefulWidget {
  const SelectorPage({super.key});

  @override
  State<SelectorPage> createState() => _SelectorPageState();
}

class _SelectorPageState extends State<SelectorPage> {
  DateTime? setDate;
  TimeOfDay? setTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 90,
            ),
            Text(setDate != null
                ? "${setDate!.day}-${setDate!.month}-${setDate!.year}"
                : "Please select a date"),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  final DateTime? datePicker = await showDatePicker(
                      context: context,
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2050));
                  if (datePicker != null && setDate != datePicker) {
                    setState(() {
                      setDate = datePicker;
                    });
                  }
                },
                child: Text("Choose a date")),
            SizedBox(
              height: 30,
            ),
            Text(setTime != null
                ? "${setTime!.hour} :${setTime!.minute}"
                : "Please select a time"),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  final TimeOfDay? timePicker = await showTimePicker(
                      context: context, initialTime: TimeOfDay.now());
                  if (timePicker != null && setTime != timePicker) {
                    setState(() {
                      setTime = timePicker;
                    });
                  }
                },
                child: Text("Choose a time")),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  if (setTime != null && setDate != null) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ConfirmPage()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Please select a date and time")));
                  }
                },
                child: Text("Confirm")),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
