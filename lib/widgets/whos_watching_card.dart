import 'package:flutter/material.dart';
import 'package:netflix_ui_clone/dummy_data.dart';

class WhosWatchingCard extends StatelessWidget {
  const WhosWatchingCard({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 90,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(watchingData[index].image),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          watchingData[index].name,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        watchingData[index].isLocked
            ? (const Icon(Icons.lock_outline, size: 13))
            : const SizedBox()
      ],
    );
  }
}
