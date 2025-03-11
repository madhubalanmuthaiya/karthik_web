import 'package:flutter/material.dart';
import 'package:flutter_web_project/servicecard.dart';
import 'package:flutter_web_project/util.dart';


class ServicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Our Services')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 1,
            childAspectRatio: 1.5,
          ),
          itemCount: services.length,
          itemBuilder: (context, index) {
            return ServiceCard(service: services[index]);
          },
        ),
      ),
    );
  }
}