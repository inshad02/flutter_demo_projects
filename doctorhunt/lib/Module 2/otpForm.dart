import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../main.dart';

class Otpform extends StatefulWidget {
  const Otpform({super.key});

  @override
  State<Otpform> createState() => _OtpformState();
}

class _OtpformState extends State<Otpform> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: mq.height * 0.065,
          width: mq.width * 0.13,
          child: TextFormField(
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            onSaved: (pin1) {},
            decoration: InputDecoration(
                hintText: "0",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
            style: Theme.of(context).textTheme.headlineMedium,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        SizedBox(
          height: mq.height * 0.065,
          width: mq.width * 0.13,
          child: TextFormField(
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            onSaved: (pin1) {},
            decoration: InputDecoration(
                hintText: "0",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
            style: Theme.of(context).textTheme.headlineMedium,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        SizedBox(
          height: mq.height * 0.065,
          width: mq.width * 0.13,
          child: TextFormField(
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            onSaved: (pin1) {},
            decoration: InputDecoration(
                hintText: "0",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
            style: Theme.of(context).textTheme.headlineMedium,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        SizedBox(
          height: mq.height * 0.065,
          width: mq.width * 0.13,
          child: TextFormField(
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            onSaved: (pin1) {},
            decoration: InputDecoration(
                hintText: "0",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
            style: Theme.of(context).textTheme.headlineMedium,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        )
      ],
    ));
  }
}
