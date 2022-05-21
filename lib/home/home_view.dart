import 'package:ankara_workshop_examples/home/widget/locations_detail_card.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'home_view_model.dart';

class HomeView extends HomeViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
              mapType: MapType.hybrid,
              initialCameraPosition: const CameraPosition(
                  target: LatLng(39.9030394, 32.4825798), zoom: 7),
              myLocationButtonEnabled: false,
              markers: createMarker(),
              onMapCreated: (GoogleMapController controller) {
                mapController = controller;
              }),
          Positioned(
            bottom: 30,
            left: -MediaQuery.of(context).size.width * 0.01,
            right: 0,
            height: 200,
            child: PageView.builder(
              itemCount: locationsModel!.length,
              onPageChanged: (index) => changePage(index),
              itemBuilder: (context, index) {
                var model = locationsModel![index].detail!;
                return LocationDetailCard(
                  name: model.name,
                  description: model.description,
                  photoUrl: model.photoUrl,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
