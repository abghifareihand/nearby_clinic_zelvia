import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hospital_maps/utils/config.dart';
import 'package:hospital_maps/models/hospital_model.dart';
import 'package:hospital_maps/providers/maps_provider.dart';
import 'package:hospital_maps/providers/page_provider.dart';
import 'package:hospital_maps/styles/constant.dart';
import 'package:hospital_maps/screens/maps/detail_page.dart';
import 'package:provider/provider.dart';

class HospitalCard extends StatefulWidget {
  const HospitalCard({super.key});

  @override
  State<HospitalCard> createState() => _HospitalCardState();
}

class _HospitalCardState extends State<HospitalCard> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PageProvider>(
      builder: (context, pageProv, _) {
        if (pageProv.pageController == null) {
          pageProv.initController();
          return const Center(
            child: CircularProgressIndicator(
              color: blueColor,
            ),
          );
        }

        return Consumer<MapProvider>(
          builder: (context, mapProv, _) {
            return AnimatedPositioned(
              duration: const Duration(seconds: 4),
              curve: Curves.elasticInOut,
              bottom: pageProv.bottomPosition,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: pageProv.pageHeight,
                  child: NotificationListener<ScrollNotification>(
                    onNotification: (ScrollNotification? notification) {
                      if (notification is ScrollUpdateNotification) {
                        pageProv.changePagePosition();
                      }
                      return true;
                    },
                    child: PageView.builder(
                      onPageChanged: (pos) =>
                          pageProv.changeCurrentPage(pos, context),
                      physics: const BouncingScrollPhysics(),
                      controller: pageProv.pageController!,
                      itemCount: mapProv.hospitalList.length,
                      itemBuilder: (context, index) {
                        final scale = max(
                            pageProv.scaleFraction,
                            (pageProv.fullScale -
                                    (index - pageProv.page!).abs()) +
                                pageProv.viewPortFraction);
                        var tubles = mapProv.hospitalList[index];

                        return _hospitalChild(scale, tubles, index);
                      },
                    ),
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

Widget _hospitalChild(double scale, HospitalModel hospital, int index) {
  return Builder(
    builder: (context) {
      return Consumer<PageProvider>(
        builder: (context, pageProv, _) {
          return Consumer<MapProvider>(
            builder: (context, mapProv, _) {
              return Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: () => mapProv.dialogNavigate(context, hospital),
                  onLongPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(hospital: hospital),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    height: (pageProv.pageHeight / 2.8) * scale,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 100,
                          height: 140,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                                // "${Config.imageIcon}/destination.png",
                                hospital.imageUrl!,
                                fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        pageProv.page == index
                            ? Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      hospital.title!,
                                      style: blackTextStyle.copyWith(
                                        fontSize: 16,
                                        fontWeight: semiBold,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      hospital.address!,
                                      style: greyTextStyle.copyWith(),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              )
                            : const SizedBox()
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      );
    },
  );
}
