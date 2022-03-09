import 'package:flutter/material.dart';

class ViewAllText extends StatelessWidget {
  const ViewAllText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Text(
        'View All',
        style: TextStyle(
          fontSize: 14,
          color: Colors.orange.shade800,
        ),
      ),
    );
  }
}
