import 'package:google_maps_flutter/google_maps_flutter.dart';

class HospitalModel {
  String? title;
  String? imageUrl;
  String? address;
  LatLng? location;

  HospitalModel({
    this.title, 
    this.imageUrl,
    this.address, 
    this.location
  });
}