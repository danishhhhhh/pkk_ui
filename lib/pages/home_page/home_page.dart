import 'package:flutter/material.dart';
import 'package:tugas_slicing_pkk/common/konserklik_colors.dart';
import 'package:tugas_slicing_pkk/pages/home_page/component/deal_of_the_week_component.dart';
import 'package:tugas_slicing_pkk/pages/home_page/component/newest_concert_component.dart';
import 'package:tugas_slicing_pkk/pages/home_page/component/recommendation_component.dart';
import 'package:tugas_slicing_pkk/pages/home_page/component/search_component.dart';
import 'package:tugas_slicing_pkk/pages/home_page/component/top_logo_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TopLogoComponent(),
              SearchComponent(),
              RecommendationComponent(),
              DealOfTheWeekComponent(),
              NewestConcertComponent(),
              SizedBox(height: 40)
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: InkWell(
          onTap: () {},
          child: Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
              color: KonserKlikColor.toscaBase,
              borderRadius: BorderRadius.circular(64),
            ),
            child: const Icon(
              Icons.smart_toy_rounded,
              color: Colors.white,
              size: 28,
            ),
          ),
        ),
      )
    );
  }
}
