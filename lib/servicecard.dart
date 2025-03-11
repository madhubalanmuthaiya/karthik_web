import 'package:flutter/material.dart';
import 'package:flutter_web_project/util.dart';


class ServiceCard extends StatelessWidget {
  final Map<String, dynamic> service;

  ServiceCard({required this.service});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(service['icon'], size: 50, color: kPrimaryColor),
            SizedBox(height: 20),
            Text(service['title'], 
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}