import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_web_project/util.dart';


class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      await FirebaseFirestore.instance.collection('contacts').add({
        'name': _nameController.text,
        'email': _emailController.text,
        'message': _messageController.text,
        'timestamp': FieldValue.serverTimestamp(),
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Message sent successfully!')),
      );
      _nameController.clear();
      _emailController.clear();
      _messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact Us')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: _buildContactForm()),
                  SizedBox(width: 40),
                  Expanded(child: _buildContactInfo()),
                ],
              );
            } else {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    _buildContactForm(),
                    SizedBox(height: 40),
                    _buildContactInfo(),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }

  Widget _buildContactForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: InputDecoration(labelText: 'Name'),
            validator: (value) => value!.isEmpty ? 'Required' : null,
          ),
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(labelText: 'Email'),
            validator: (value) => 
              value!.isEmpty ? 'Required' : 
              !value.contains('@') ? 'Invalid email' : null,
          ),
          TextFormField(
            controller: _messageController,
            decoration: InputDecoration(labelText: 'Message'),
            maxLines: 5,
            validator: (value) => value!.isEmpty ? 'Required' : null,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _submitForm,
            child: Text('Send Message'),
          ),
        ],
      ),
    );
  }

  Widget _buildContactInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Reach Us At', style: kSectionTitleStyle),
        SizedBox(height: 20),
        ListTile(
          leading: Icon(Icons.location_on, color: kPrimaryColor),
          title: Text('123 Tech Park, Silicon Valley, CA'),
        ),
        ListTile(
          leading: Icon(Icons.phone, color: kPrimaryColor),
          title: Text('+1 (555) 123-4567'),
        ),
        ListTile(
          leading: Icon(Icons.email, color: kPrimaryColor),
          title: Text('contact@flumakeinfotech.com'),
        ),
      ],
    );
  }
}