import 'package:flutter/material.dart';

// Colors
const Color kPrimaryColor = Color(0xFF2A2A72);
const Color kAccentColor = Color(0xFF009FFD);

// Text Styles
const TextStyle kHeroTitleStyle = TextStyle(
  fontSize: 48,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

const TextStyle kSectionTitleStyle = TextStyle(
  fontSize: 36,
  fontWeight: FontWeight.w600,
  color: kPrimaryColor,
);

const TextStyle kNavTitleStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

// Dummy Data
List<Map<String, dynamic>> services = [
  {'title': 'Mobile Apps', 'icon': Icons.phone_iphone},
  {'title': 'Web Development', 'icon': Icons.web},
  {'title': 'UI/UX Design', 'icon': Icons.design_services},
];

// Add to constants.dart

// Portfolio Projects
List<Map<String, dynamic>> projects = [
  {
    'title': 'E-Commerce App',
    'description': 'Flutter-based shopping platform',
    'image': 'assets/project1.jpg',
    'tags': ['Flutter', 'Firebase', 'UI/UX'],
  },
  {
    'title': 'Healthcare System',
    'description': 'Patient management web app',
    'image': 'assets/project2.jpg',
    'tags': ['React', 'Node.js', 'MongoDB'],
  },
];