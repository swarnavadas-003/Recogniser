import 'package:flutter/material.dart';

class nextScreen extends StatefulWidget {
  const nextScreen({super.key, required this.title});

  final title;

  @override
  State<nextScreen> createState() => _nextScreenState();
}

class _nextScreenState extends State<nextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
    );
  }
}
