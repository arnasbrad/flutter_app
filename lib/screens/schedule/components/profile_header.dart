import 'package:flutter/material.dart';

import '../../profile/profile_screen.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProfileScreen()),
        );
      },
      child: Row(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.indigoAccent,
            child: const Icon(
              Icons.person,
              color: Colors.white,
              size: 50,
            ),
          ),
          const SizedBox(width: 12),
          Text(
            'Profile',
            style: TextStyle(
              fontSize: 50,
              color: Colors.indigoAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}