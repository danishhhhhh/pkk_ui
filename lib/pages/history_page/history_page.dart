import 'package:flutter/material.dart';
import 'package:tugas_slicing_pkk/common/konserklik_colors.dart';
import 'package:tugas_slicing_pkk/pages/history_page/component/event_card_component.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: EdgeInsets.only(top: height * 0.1125),
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return const EventCardComponent(
                    image: 'assets/image/concert_card_image.jpg',
                    name: 'REAL: Music',
                    date: '20-21-2021',
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: width * 0.1),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: KonserKlikColor.toscaBase,
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.maxFinite,
              child: const Text(
                textAlign: TextAlign.center,
                "Your Ticket Purchased",
                style: TextStyle(
                  color: KonserKlikColor.whiteBase,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
