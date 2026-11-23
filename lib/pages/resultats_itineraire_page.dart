import 'package:flutter/material.dart';
import '../data/itineraires_data.dart';
import '../widgets/itineraire_card.dart';

class ResultatsItinerairePage extends StatelessWidget {
  const ResultatsItinerairePage({super.key});

  @override
  Widget build(BuildContext context) {
    final liste = itinerairesFictifs;
    return Scaffold(
      appBar: AppBar(title: const Text('Résultats d\u2019itinéraire')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
            child: Row(
              children: [
                const Icon(Icons.trip_origin, size: 18),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Abobo → Cocody',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '${liste.length} itinéraires proposés · durées et tarifs estimés',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              itemCount: liste.length,
              itemBuilder: (context, i) =>
                  ItineraireCard(itineraire: liste[i]),
            ),
          ),
        ],
      ),
    );
  }
}