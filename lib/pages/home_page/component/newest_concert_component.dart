import 'package:flutter/material.dart';
import 'package:tugas_slicing_pkk/common/konserklik_colors.dart';
import 'package:tugas_slicing_pkk/pages/home_page/widget/deal_of_the_week_card.dart';
import 'package:tugas_slicing_pkk/pages/home_page/widget/newest_concert_card.dart';
import 'package:tugas_slicing_pkk/pages/home_page/widget/recommendation_card.dart';

class NewestConcertComponent extends StatelessWidget {
  const NewestConcertComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.only(bottom: 20, top: 25),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: KonserKlikColor.yellowBase.withOpacity(0.2),
              width: 1,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                "Konser Terkini",
                style: TextStyle(
                  color: KonserKlikColor.blackBase,
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12.5
                ),
                itemCount: 8,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const NewestConcertCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
