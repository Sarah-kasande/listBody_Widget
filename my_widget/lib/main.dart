import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListBody Example',
      home: const FavoritePlacesPage(),
    );
  }
}

class FavoritePlacesPage extends StatelessWidget {
  const FavoritePlacesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('My Favorite Places'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: ListBody(
          children: [
            _buildPlaceCard(
              image: 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e',
              title: 'Beach Paradise',
              description: 'Relax and enjoy the sound of waves and sunshine.',
            ),
            _buildPlaceCard(
              image: 'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee',
              title: 'Mountain Escape',
              description: 'Perfect spot for hiking and fresh air.',
            ),
            _buildPlaceCard(
              image: 'https://images.unsplash.com/photo-1505761671935-60b3a7427bad',
              title: 'City Lights',
              description: 'Explore the vibrant nightlife and modern buildings.',
            ),
            _buildPlaceCard(
              image: 'https://media.vrbo.com/lodging/91000000/90320000/90314100/90314099/fc27c910.jpg?impolicy=resizecrop&rw=575&rh=575&ra=fill',
              title: 'Forest Retreat',
              description: 'Reconnect with nature in a peaceful forest cabin.',
           ),
            _buildPlaceCard(
              image: 'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
              title: 'Desert Adventure',
              description: 'Experience the thrill of sand dunes and sunsets.',
       ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlaceCard({
    required String image,
    required String title,
    required String description,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.network(
              image,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 6),
                Text(description,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}