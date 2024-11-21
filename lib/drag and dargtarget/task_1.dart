import 'package:flutter/material.dart';

class AnimalMatchingGame extends StatefulWidget {
  @override
  _AnimalMatchingGameState createState() => _AnimalMatchingGameState();
}

class _AnimalMatchingGameState extends State<AnimalMatchingGame> {
  // Animal names and network image URLs
  final Map<String, String> animals = {
    'Lion': 'https://cdn.britannica.com/29/150929-050-547070A1/lion-Kenya-Masai-Mara-National-Reserve.jpg',
    'Elephant': 'https://upload.wikimedia.org/wikipedia/commons/9/98/Elephas_maximus_%28Bandipur%29.jpg',
    'Dog': 'https://cdn.britannica.com/79/232779-050-6B0411D7/German-Shepherd-dog-Alsatian.jpg',
  };

  final Map<String, String> targets = {
    'Lion': 'Lion',
    'Elephant': 'Elephant',
    'Dog': 'Dog',
  };

  Map<String, String> matched = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display draggable animal images (only if not matched)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: animals.keys.where((animal) => !matched.containsKey(animal)).map((animal) {
                return Draggable<String>(
                  data: animal,
                  child: Image.network(animals[animal]!, width: 100, height: 100),
                  feedback: Image.network(animals[animal]!, width: 100, height: 100),
                  childWhenDragging: Container(),
                );
              }).toList(),
            ),
            SizedBox(height: 50),

            // Display drag targets to match animals
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: targets.keys.map((target) {
                return DragTarget<String>(
                  onAccept: (String data) {
                    if (data == target) {
                      setState(() {
                        matched[data] = target;  // Mark the animal as matched
                      });
                    }
                  },
                  builder: (context, candidateData, rejectedData) {
                    return Container(
                      width: 100,
                      height: 100,
                      color: matched.containsKey(target) ? Colors.green : Colors.grey,
                      child: matched.containsKey(target)
                          ? Center(child: Text(targets[target]!))
                          : Center(child: Text(target)),
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
