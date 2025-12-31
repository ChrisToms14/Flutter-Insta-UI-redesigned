import 'package:flutter/material.dart';
import '../utils/colors.dart';

class PostWidget extends StatelessWidget {
  final String username;
  final String image;
  final String caption;

  const PostWidget({
    super.key,
    required this.username,
    required this.image,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile.jpg"),
          ),
          title: Text(username, style: const TextStyle(color: white)),
          trailing: const Icon(Icons.more_vert, color: white),
        ),
        Image.asset(image, fit: BoxFit.cover),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: const [
              Icon(Icons.favorite_border, color: white),
              SizedBox(width: 12),
              Icon(Icons.comment, color: white),
              SizedBox(width: 12),
              Icon(Icons.send, color: white),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            "$username $caption",
            style: const TextStyle(color: white),
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
