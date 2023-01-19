import 'package:flutter/material.dart';
import 'package:hospital_maps/providers/maps_provider.dart';
import 'package:hospital_maps/widgets/clip_triangle.dart';
import 'package:provider/provider.dart';

class MarkerItem {
  /// Initialize instance
  static MarkerItem instance = MarkerItem();

  Widget tublesMarker() {
    return Consumer<MapProvider>(
      builder: (context, mapProv, _) {
        return RepaintBoundary(
          key: mapProv.markerKey,
          child: SizedBox(
            width: 200,
            height: 120,
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 10),
                            blurRadius: 10,
                            spreadRadius: 1,
                            color: Colors.grey.withOpacity(0.3))
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mapProv.tublesSelected != null
                          ? mapProv.tublesSelected!.title!
                          : "Null",
                      style: const TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                RotatedBox(
                  quarterTurns: 2,
                  child: CustomPaint(
                    painter: TrianglePainter(
                      strokeColor: Colors.white,
                      strokeWidth: 10,
                      paintingStyle: PaintingStyle.fill,
                    ),
                    child: const SizedBox(
                      width: 16,
                      height: 13,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 3),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 10),
                            blurRadius: 10,
                            spreadRadius: 1,
                            color: Colors.grey.withOpacity(0.5))
                      ]),
                  child: Center(
                    child: Image.asset(
                      "images/icon/destination.png",
                      width: 36,
                      height: 36,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget myLocationMarker() {
    return Consumer<MapProvider>(
      builder: (context, mapProv, _) {
        return RepaintBoundary(
          key: mapProv.myLocationKey,
          child: SizedBox(
            width: 200,
            height: 120,
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 10),
                            blurRadius: 10,
                            spreadRadius: 1,
                            color: Colors.grey.withOpacity(0.3))
                      ]),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Kamu",
                      style: TextStyle(
                          color: Colors.black87, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                RotatedBox(
                  quarterTurns: 2,
                  child: CustomPaint(
                    painter: TrianglePainter(
                      strokeColor: Colors.white,
                      strokeWidth: 10,
                      paintingStyle: PaintingStyle.fill,
                    ),
                    child: const SizedBox(
                      width: 16,
                      height: 13,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                        border: Border.all(color: Colors.white, width: 3),
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0, 10),
                              blurRadius: 10,
                              spreadRadius: 1,
                              color: Colors.grey.withOpacity(0.5))
                        ]),
                    child: const Icon(Icons.location_on,
                        color: Colors.white, size: 25)),
              ],
            ),
          ),
        );
      },
    );
  }
}
