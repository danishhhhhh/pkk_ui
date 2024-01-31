import 'package:flutter/material.dart';
import 'package:tugas_slicing_pkk/pages/home_page/component/deal_of_the_week_component.dart';
import 'package:tugas_slicing_pkk/pages/home_page/component/newest_concert_component.dart';
import 'package:tugas_slicing_pkk/pages/home_page/component/recommendation_component.dart';
import 'package:tugas_slicing_pkk/pages/home_page/component/search_component.dart';
import 'package:tugas_slicing_pkk/pages/home_page/component/top_logo_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
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
    );
  }
}
