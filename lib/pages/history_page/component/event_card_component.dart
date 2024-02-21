import 'package:flutter/material.dart';
import 'package:tugas_slicing_pkk/common/konserklik_colors.dart';

class EventCardComponent extends StatelessWidget {
  const EventCardComponent(
      {super.key, required this.name, required this.image, required this.date});

  final String name, image, date;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: width * 0.1),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(5, 5),
              blurRadius: 10,
              spreadRadius: 1,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: KonserKlikColor.whiteBase,
                        border: Border.all(color: KonserKlikColor.toscaBase, width: 1),
                        borderRadius: BorderRadius.circular(5)),
                    child: const Text(
                      "Payment Successful",
                      style: TextStyle(
                        color: KonserKlikColor.toscaBase,
                        fontFamily: "Poppins",
                        fontSize: 7,
                        fontWeight: FontWeight.w900
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.more_vert,
                    size: 16,
                  )
                ],
              ),
            ),
            const Divider(
              height: 0,
              color: KonserKlikColor.lightGrey,
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 2),
                        width: width * 0.4,
                        child: Text(
                          name,
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontFamily: "Poppins", fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.calendar_today,
                            color: KonserKlikColor.greyBase,
                            size: 12,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              date,
                              style: const TextStyle(
                                fontFamily: "Poppins",
                                color: KonserKlikColor.greyBase,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                      width: width * 0.225,
                      height: width * 0.125,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.all(7),
                    child: Text(
                      "E-Ticket",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    "Purchased on 10-21-2021",
                    style: TextStyle(color: KonserKlikColor.lightGrey, fontSize: 10, fontFamily: "Poppins"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
