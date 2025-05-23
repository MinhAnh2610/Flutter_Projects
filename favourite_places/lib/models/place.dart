import 'dart:io';

import 'package:uuid/uuid.dart';

final uuid = const Uuid();

class PlaceLocation {
  PlaceLocation({
    required this.latitude,
    required this.longtitude,
    required this.address,
  });

  final double latitude;
  final double longtitude;
  final String address;
}

class Place {
  Place({required this.title, required this.image, required this.location})
    : id = uuid.v4();

  final String id;
  final String title;
  final File image;
  final PlaceLocation location;
}
