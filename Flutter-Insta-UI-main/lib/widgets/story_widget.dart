import 'package:flutter/material.dart';
import '../utils/colors.dart';

class StoryWidget extends StatelessWidget {
  final String name;
  const StoryWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/images/profile.jpg"),
          ),
          const SizedBox(height: 4),
          Text(name, style: const TextStyle(color: white, fontSize: 12)),
        ],
      ),
    );
  }
}
