import 'package:flutter/material.dart';
import 'resultats_itineraire_page.dart';

class RechercheItinerairePage extends StatelessWidget {
  const RechercheItinerairePage({super.key});

  // Suggestions fictives (écran statique)
  static const List<String> suggestions = [
    'Abobo, gare nord',
    'Adjamé, gare routière',
    'Cocody, Angré',
    'Yopougon, Sicogi',
    'Plateau, gare lagunaire',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rechercher un itinéraire')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const TextField(
            decoration: InputDecoration(
              labelText: 'Point de départ',
              prefixIcon: Icon(Icons.trip_origin),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 12),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Destination',
              prefixIcon: Icon(Icons.place),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: FilledButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ResultatsItinerairePage(),
                  ),
                );
              },
              icon: const Icon(Icons.search),
              label: const Text('Rechercher'),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Suggestions',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          for (final s in suggestions)
            ListTile(
              leading: const Icon(Icons.history),
              title: Text(s),
              contentPadding: EdgeInsets.zero,
            ),
        ],
      ),
    );
  }
}