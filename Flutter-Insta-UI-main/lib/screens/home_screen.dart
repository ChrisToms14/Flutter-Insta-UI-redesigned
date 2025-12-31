import 'package:flutter/material.dart';
import '../widgets/story_widget.dart';
import '../widgets/post_widget.dart';
import '../utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              "Instagram",
              style: TextStyle(
                color: white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 110,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                StoryWidget(name: "you"),
                StoryWidget(name: "alex"),
                StoryWidget(name: "john"),
                StoryWidget(name: "emma"),
              ],
            ),
          ),
          const Divider(color: grey),
          const PostWidget(
            username: "alex",
            image: "assets/images/post1.jpg",
            caption: "Enjoying life ✨",
          ),
          const PostWidget(
            username: "emma",
            image: "assets/images/post2.jpg",
            caption: "Beautiful day 🌸",
          ),
        ],
      ),
    );
  }
}
