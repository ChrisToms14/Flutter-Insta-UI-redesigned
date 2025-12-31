import 'package:flutter/material.dart';
import '../utils/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 20),
          const CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage("assets/images/profile.jpg"),
          ),
          const SizedBox(height: 8),
          const Text("safwan",
              style: TextStyle(color: white, fontSize: 18)),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text("10\nPosts", textAlign: TextAlign.center, style: TextStyle(color: white)),
              Text("250\nFollowers", textAlign: TextAlign.center, style: TextStyle(color: white)),
              Text("180\nFollowing", textAlign: TextAlign.center, style: TextStyle(color: white)),
            ],
          ),
          const Divider(color: grey),
          Expanded(
            child: GridView.builder(
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: 9,
              itemBuilder: (_, __) {
                return Image.asset(
                  "assets/images/post1.jpg",
                  fit: BoxFit.cover,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
