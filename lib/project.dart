import 'package:flutter/material.dart';


class ProjectCard extends StatelessWidget {
  final Map<String, dynamic> project;

  ProjectCard({required this.project});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: InkWell(
        onTap: () => _showProjectDetails(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.asset(project['image'], fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(project['title'], style: TextStyle(
                    fontSize: 18, 
                    fontWeight: FontWeight.bold,
                  )),
                  SizedBox(height: 5),
                  Text(project['description'], 
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showProjectDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(project['title']),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(project['image']),
            SizedBox(height: 10),
            Text(project['description']),
            SizedBox(height: 10),
            Wrap(
              spacing: 5,
              children: project['tags'].map<Widget>((tag) => 
                Chip(label: Text(tag))
              ).toList(),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Close'),
          ),
        ],
      ),
    );
  }
}