// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Product.dart';
import 'package:flutter_application_1/constants.dart';

class card extends StatelessWidget {
  final String webinar;
  final String timewebinar;
  final Color;
  const card({
    Key? key,
    required this.webinar,
    required this.timewebinar,
    required this.Color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: 305,
        height: 154,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //webinar
              Text(
                webinar.toString(),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              //time webinar
              Text(
                timewebinar.toString(),
                style: TextStyle(color: Colors.grey[600], fontSize: 14),
              ),
              SizedBox(height: 5),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(40),
                  textStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  // Foreground color
                  onPrimary: Colors.white,
                  // Background color
                  primary: kTextnotice,
                ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                onPressed: () {},
                child: const Text('Join Now'),
              ),
            ]),
      ),
    );
  }
}
