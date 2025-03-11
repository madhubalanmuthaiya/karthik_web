import 'package:flutter/material.dart';
import 'package:flutter_web_project/project.dart' show ProjectCard;
import 'package:flutter_web_project/util.dart';


class PortfolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Our Portfolio')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Featured Projects', style: kSectionTitleStyle),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 1,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1.2,
                ),
                itemCount: projects.length,
                itemBuilder: (context, index) => ProjectCard(project: projects[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}