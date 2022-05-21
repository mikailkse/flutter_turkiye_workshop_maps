import 'package:ankara_workshop_examples/home/model/location_dummy_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import './home.dart';

abstract class HomeViewModel extends State<Home> {
  List<LocationsModel>? locationsModel = DummyLocation.locations;

  GoogleMapController? mapController;

  void changePage(int index) {
    mapController?.animateCamera(
      CameraUpdate.newLatLng(locationsModel![index].latlong),
    );
  }

  Set<Marker> createMarker() {
    return locationsModel!
        .map(
          (data) => Marker(
            markerId: MarkerId(data.hashCode.toString()),
            position: data.latlong,
            icon: BitmapDescriptor.defaultMarkerWithHue(10),
            zIndex: 10,
            infoWindow: InfoWindow(title: data.country),
          ),
        )
        .toSet();
  }
}
