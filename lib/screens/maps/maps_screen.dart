import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hospital_maps/providers/maps_provider.dart';
import 'package:hospital_maps/providers/page_provider.dart';
import 'package:hospital_maps/screens/auth/login_screen.dart';
import 'package:hospital_maps/services/shared_services.dart';
import 'package:hospital_maps/styles/constant.dart';
import 'package:hospital_maps/screens/maps/widgets/marker_widget.dart';
import 'package:hospital_maps/screens/maps/widgets/navigation_widget.dart';
import 'package:hospital_maps/screens/maps/widgets/hospital_widget.dart';
import 'package:provider/provider.dart';

class MapsScreen extends StatelessWidget {
  const MapsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    /// This is a function to initialize map view
    final mapProv = Provider.of<MapProvider>(context);
    final pageProv = Provider.of<PageProvider>(context, listen: false);
    if (mapProv.cameraPosition == null) {
      mapProv.initCamera(context);
    } else {
      //When map already loaded then show the item
      if (pageProv.bottomPosition == -200) {
        pageProv.updateBottomPosition(30);
      }
    }

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark),
    );

    return Stack(
      children: <Widget>[
        MarkerItem.instance.tublesMarker(),
        MarkerItem.instance.myLocationMarker(),
        Container(
          width: deviceWidth(context),
          height: deviceHeight(context),
          color: Colors.white,
        ),
        mapProv.cameraPosition != null
            ? SizedBox(
                width: deviceWidth(context),
                height: deviceHeight(context),
                child: GoogleMap(
                  myLocationButtonEnabled: false,
                  myLocationEnabled: false,
                  compassEnabled: false,
                  zoomControlsEnabled: false,
                  tiltGesturesEnabled: false,
                  markers: mapProv.markers,
                  polylines: mapProv.polylines,
                  mapType: MapType.normal,
                  initialCameraPosition: mapProv.cameraPosition!,
                  onMapCreated: mapProv.onMapCreated,
                  mapToolbarEnabled: false,
                ),
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
        mapProv.isNavigate == true ? const NavigationItem() : const SizedBox(),
        mapProv.isNavigate == false ? const HospitalCard() : const SizedBox(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            mapProv.isNavigate == true ? _backWidget() : const SizedBox(),
            mapProv.cameraPosition != null
                ? _myLocationWidget()
                : const SizedBox(),
          ],
        ),
        // mapProv.isNavigate == true ? _backWidget() : const SizedBox(),
        mapProv.isNavigate == false ? _appBarWidget() : const SizedBox(),
        // mapProv.cameraPosition != null ? _myLocationWidget() : const SizedBox(),
      ],
    );
  }

  Widget _appBarWidget() {
    return Builder(
      builder: (context) {
        return Consumer<MapProvider>(
          builder: (context, provider, child) {
            final address = provider.myAddress;
            return Container(
              height: 165,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 40,
                  bottom: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Halo, ${FirebaseAuth.instance.currentUser!.email}",
                          style: whiteTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: semiBold,
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
         

                            showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                title: Text(
                                  'Keluar',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: semiBold,
                                  ),
                                ),
                                content: Text(
                                  'Kamu yakin ingin keluar?',
                                  style: blackTextStyle.copyWith(
                                    fontWeight: medium,
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    child: Text(
                                      'OK',
                                      style: primaryTextStyle.copyWith(
                                        fontWeight: semiBold,
                                      ),
                                    ),
                                    onPressed: () async {
                                      final pref = SharedServices();
                                      pref.deleteEmail();
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginScreen(),
                                          ),
                                          (route) => false);
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          behavior: SnackBarBehavior.floating,
                                          content: Text('Berhasil Logout'),
                                        ),
                                      );
                                    },
                                  ),
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: Text(
                                      'TIDAK',
                                      style: primaryTextStyle.copyWith(
                                        fontWeight: semiBold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          child: const Icon(
                            Icons.logout,
                            color: whiteColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    provider.myAddress != null
                        ? Text(
                            "Lokasi kamu, \n${address?.first.street}, ${address?.first.subLocality}, ${address?.first.locality}, ${address?.first.subAdministrativeArea}, ${address?.first.administrativeArea}, ${address?.first.postalCode}",
                            style: whiteTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          )
                        : const Center(
                            child: CircularProgressIndicator(
                              color: whiteColor,
                            ),
                          ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _backWidget() {
    return Builder(
      builder: (context) {
        return Consumer<MapProvider>(
          builder: (context, mapProv, _) {
            return Padding(
              padding: const EdgeInsets.only(top: 36, left: 20),
              child: InkWell(
                onTap: () => mapProv.stopNavigate(),
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Icon(Icons.keyboard_arrow_left,
                      color: Colors.orange, size: 35),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _myLocationWidget() {
    return Builder(
      builder: (context) {
        return Consumer<MapProvider>(
          builder: (context, mapProv, _) {
            return Padding(
              padding: const EdgeInsets.only(top: 36, right: 20),
              child: InkWell(
                onTap: () =>
                    mapProv.changeCameraPosition(mapProv.sourceLocation!),
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(
                    Icons.location_searching_sharp,
                    color: Colors.black,
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
