import 'package:flutter/material.dart';
import '../utils/colors.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 3,
      itemBuilder: (_, __) {
        return Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("assets/images/reel1.jpg", fit: BoxFit.cover),
            Positioned(
              bottom: 30,
              left: 16,
              child: Text("@user",
                  style: TextStyle(color: white, fontSize: 16)),
            ),
            Positioned(
              right: 16,
              bottom: 80,
              child: Column(
                children: const [
                  Icon(Icons.favorite, color: white),
                  SizedBox(height: 16),
                  Icon(Icons.comment, color: white),
                  SizedBox(height: 16),
                  Icon(Icons.send, color: white),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
