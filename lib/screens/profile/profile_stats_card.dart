import 'package:flutter/material.dart';

class ProfileStatsCard extends StatelessWidget {
  final String title;
  final String subtite;
  final VoidCallback onTap;

  const ProfileStatsCard(
      {super.key,
      required this.title,
      required this.subtite,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 160 ~/ 92,
        child: InkWell(
            onTap: () => {onTap.call()},
            child: AspectRatio(
                aspectRatio: 160 / 92,
                child: SizedBox(
                    height: 92,
                    child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFFF9F9F9),
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(title,
                                  style: const TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w700)),
                              const SizedBox(width: 4),
                              Text(subtite,
                                  style: const TextStyle(fontSize: 16))
                            ]))))));
  }
}
