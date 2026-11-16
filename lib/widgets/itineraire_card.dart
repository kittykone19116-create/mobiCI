import 'package:flutter/material.dart';
import '../models/itineraire.dart';
import '../utils/format.dart';

class ItineraireCard extends StatelessWidget {
  const ItineraireCard({super.key, required this.itineraire});

  final Itineraire itineraire;

  @override
  Widget build(BuildContext context) {
    final it = itineraire;
    final tarif = it.tarifFcfa == null
        ? 'Tarif indisponible'
        : '≈ ${it.tarifFcfa} FCFA (estimation)';
    final corr = it.correspondances == 0
        ? 'Direct'
        : '${it.correspondances} correspondance${it.correspondances > 1 ? 's' : ''}';

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    spacing: 6,
                    runSpacing: 6,
                    children: [
                      for (final m in it.modes) _ModeChip(mode: m),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    it.etapes,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 16,
                    runSpacing: 4,
                    children: [
                      _Info(
                        icone: Icons.schedule,
                        texte: formaterDuree(it.dureeMinutes),
                      ),
                      _Info(icone: Icons.payments, texte: tarif),
                      _Info(icone: Icons.swap_horiz, texte: corr),
                    ],
                  ),
                ],
              ),
            ),
            const Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}

class _ModeChip extends StatelessWidget {
  const _ModeChip({required this.mode});

  final ModeTransport mode;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: mode.couleur.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(mode.icone, size: 14, color: mode.couleur),
          const SizedBox(width: 4),
          Text(
            mode.libelle,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: mode.couleur,
            ),
          ),
        ],
      ),
    );
  }
}

class _Info extends StatelessWidget {
  const _Info({required this.icone, required this.texte});

  final IconData icone;
  final String texte;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icone, size: 16),
        const SizedBox(width: 4),
        Text(texte),
      ],
    );
  }
}