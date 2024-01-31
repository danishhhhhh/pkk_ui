import 'package:flutter/material.dart';
import 'package:tugas_slicing_pkk/common/konserklik_colors.dart';
import 'package:tugas_slicing_pkk/pages/home_page/widget/recommendation_card.dart';

class RecommendationComponent extends StatelessWidget {
  const RecommendationComponent({super.key});

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
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                "Konser untukmu",
                style: TextStyle(
                  color: KonserKlikColor.blackBase,
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20, right: 5),
              child: Row(
                children: [
                  RecommendationCard(),
                  RecommendationCard(),
                  RecommendationCard(),
                  RecommendationCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
