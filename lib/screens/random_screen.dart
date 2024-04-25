import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:praktikum_2_dan_3/components/big_card.dart';
import 'package:praktikum_2_dan_3/providers/app_state.dart';

class RandomScreen extends StatelessWidget {
  const RandomScreen({
    super.key,
    required this.pair,
    required this.appState,
    required this.icon,
  });

  final WordPair pair;
  final AppState appState;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BigCard(pair: pair),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  appState.toggleFavorite();
                },
                icon: Icon(icon),
                label: const Text("Like"),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  appState.getNext();
                },
                child: const Text("Next"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
