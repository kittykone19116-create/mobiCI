import 'package:flutter/material.dart';

enum ModeTransport {
  gbaka('Gbaka', Icons.directions_bus, Color(0xFFF77F00)),
  woroWoro('Wôrô-wôrô', Icons.local_taxi, Color(0xFF009E60)),
  busBateau('Bateau-bus', Icons.directions_boat, Color(0xFF027DFD));

  const ModeTransport(this.libelle, this.icone, this.couleur);

  final String libelle;
  final IconData icone;
  final Color couleur;
}

class Itineraire {
  final List<ModeTransport> modes;
  final int dureeMinutes;
  final int? tarifFcfa; // null = estimation indisponible
  final int correspondances;
  final String etapes;

  const Itineraire({
    required this.modes,
    required this.dureeMinutes,
    this.tarifFcfa,
    required this.correspondances,
    required this.etapes,
  });
}