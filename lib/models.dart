import 'package:flutter/material.dart';

enum TechnicalTrack {
  sustainability,
  industry,
  mobility,
  infoTelecom,
}

enum Agenda {
  full,
  user,
}

class EventTrack {
  const EventTrack({
    required this.hour,
    this.track,
    this.workshop,
    this.workshops,
  });

  final String hour;
  final String? track;
  final Workshop? workshop;
  final List<Workshop>? workshops;
}

class EventDay {
  const EventDay({
    required this.day,
    required this.weekday,
    required this.month,
  });

  final int day;
  final String weekday;
  final String month;

  String get weekdayMin => weekday.substring(0, 3);
}

class Workshop {
  const Workshop({
    required this.speaker,
    required this.topic,
    required this.location,
    required this.title,
  });

  final Speaker speaker;
  final TechnicalTrack topic;
  final String location;
  final String title;
}

class Speaker {
  const Speaker({
    required this.name,
    required this.degree,
  });

  final String name;
  final String degree;

  String get fullTitle => "$name, $degree";
}

extension TopicExtension on TechnicalTrack {
  String get inSpanish {
    switch (this) {
      case TechnicalTrack.sustainability:
        return 'Sostenibilidad';
      case TechnicalTrack.industry:
        return 'Industria';
      case TechnicalTrack.mobility:
        return 'Movilidad';
      case TechnicalTrack.infoTelecom:
        return 'Info Telecomunicaciones';
      default:
        return '';
    }
  }

  Color get color {
    switch (this) {
      case TechnicalTrack.sustainability:
        return Colors.green.shade300;
      case TechnicalTrack.industry:
        return Colors.blue.shade300;
      case TechnicalTrack.mobility:
        return Colors.orange.shade300;
      case TechnicalTrack.infoTelecom:
        return Colors.purple.shade200;
      default:
        return Colors.grey;
    }
  }
}
