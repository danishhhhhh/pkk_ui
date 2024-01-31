import 'package:flutter/material.dart';
import 'package:tugas_slicing_pkk/common/konserklik_colors.dart';

class NewestConcertCard extends StatelessWidget {
  const NewestConcertCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      child: ClipRRect(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.circular(10.0),
        child: Stack(
          children: [
            Image.asset(
              "assets/image/concert_card_image.jpg",
              fit: BoxFit.cover,
              height: double.maxFinite,
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.25, 1],
                  colors: [Colors.transparent, Colors.black],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "REAL: Music",
                        style: TextStyle(
                            color: KonserKlikColor.whiteBase,
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "Bruno Mars",
                        style: TextStyle(
                          color: KonserKlikColor.whiteBase,
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month_outlined,
                            color: KonserKlikColor.whiteBase,
                            size: 8,
                          ),
                          Text(
                            "9 April 2024",
                            style: TextStyle(
                              color: KonserKlikColor.whiteBase,
                              fontFamily: 'Poppins',
                              fontSize: 8,
                              fontWeight: FontWeight.w400,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 2),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: KonserKlikColor.whiteBase,
                            size: 8,
                          ),
                          Text(
                            "Tokyo, Japan",
                            style: TextStyle(
                              color: KonserKlikColor.whiteBase,
                              fontFamily: 'Poppins',
                              fontSize: 8,
                              fontWeight: FontWeight.w400,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
