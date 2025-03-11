import 'package:flutter/material.dart';
import 'package:flutter_web_project/nav.dart';
import 'package:flutter_web_project/servicecard.dart';
import 'package:flutter_web_project/util.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveNavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section
            Container(
              height: 600,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF2A2A72), Color(0xFF009FFD)],
                ),
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Flumake Infotech ',
                        style: kHeroTitleStyle,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                        ),
                        onPressed: () => Navigator.pushNamed(context, '/contact'),
                        child: Text('Start Your Project'),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Services Preview
            Padding(
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: Column(
                children: [
                  Text('Our Services', style: kSectionTitleStyle),
                  SizedBox(height: 30),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 1,
                      childAspectRatio: 1.5,
                    ),
                    itemCount: services.length,
                    itemBuilder: (context, index) {
                      return ServiceCard(service: services[index]);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}