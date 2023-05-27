import 'package:flutter/material.dart';
import 'package:maps/screens/profile/profile_header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: ListView(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
                children: const [ProfileHeader()])));
  }
}
