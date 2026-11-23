import '../models/itineraire.dart';

final List<Itineraire> itinerairesFictifs = [
  Itineraire(
    modes: [ModeTransport.gbaka],
    dureeMinutes: 55,
    tarifFcfa: 300,
    correspondances: 0,
    etapes: 'Gbaka direct de la gare d\u2019Abobo vers Cocody',
  ),
  Itineraire(
    modes: [ModeTransport.gbaka, ModeTransport.woroWoro],
    dureeMinutes: 45,
    tarifFcfa: 500,
    correspondances: 1,
    etapes: 'Gbaka jusqu\u2019à Adjamé, puis wôrô-wôrô vers Cocody',
  ),
  Itineraire(
    modes: [ModeTransport.gbaka, ModeTransport.busBateau],
    dureeMinutes: 70,
    correspondances: 1,
    etapes: 'Gbaka jusqu\u2019au Plateau, puis bateau-bus',
  ),
];