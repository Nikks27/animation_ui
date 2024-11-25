import 'package:flutter/material.dart';

import 'hero_images.dart';

class HeroAnimation2 extends StatefulWidget {
  final int index;
  const HeroAnimation2({super.key, required this.index});

  @override
  State<HeroAnimation2> createState() => _HeroAnimation2State();
}

class _HeroAnimation2State extends State<HeroAnimation2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back, color: Colors.white)),
        backgroundColor: Colors.black,
        title: Text(
          itemNames[widget.index],
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // Gradient background
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Colors.grey],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Hero image inside a card with a shadow
                Hero(
                  tag: widget.index,
                  child: Material(
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 15,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          itemPhotos[widget.index],
                          height: 300,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Item title
                Text(
                  itemNames[widget.index],
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                // Item description
                Text(
                  itemDescriptions[widget.index],
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade300,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                // Buttons for actions
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        // Action 1: Like
                      },
                      icon: const Icon(Icons.thumb_up, color: Colors.white),
                      label: const Text("Like"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        // Action 2: Share
                      },
                      icon: const Icon(Icons.share, color: Colors.white),
                      label: const Text("Share"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
