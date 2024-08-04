import 'package:dot_coaching/feats/feats.dart';
import 'package:flutter/material.dart';

class PlayerWidget extends StatelessWidget {
  final PlayerModel player;
  const PlayerWidget({super.key, required this.player});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: player.isDragging ? 50 : 40,
      height: player.isDragging ? 50 : 40,
      duration: const Duration(milliseconds: 100),
      decoration: BoxDecoration(
        color: Color(player.hexColor),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          player.number.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
