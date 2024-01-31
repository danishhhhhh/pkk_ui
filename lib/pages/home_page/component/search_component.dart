import 'package:flutter/material.dart';
import 'package:tugas_slicing_pkk/common/konserklik_colors.dart';

class SearchComponent extends StatelessWidget {
  const SearchComponent({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: textEditingController,
              cursorColor: KonserKlikColor.yellowBase,
              style: const TextStyle(
                  color: KonserKlikColor.blackBase,
                  fontFamily: 'Poppins',
                  fontSize: 14
              ),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                hintText: "Mau ikut konser apa hari ini?",
                hintStyle: const TextStyle(
                  color: KonserKlikColor.lightGrey,
                  fontFamily: 'Poppins',
                  fontSize: 14
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(
                    color: KonserKlikColor.yellowBase,
                    // Change the border color here
                    width: 2.5, // Change the border width here
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(
                    color: KonserKlikColor.yellowBase,
                    // Change the border color here
                    width: 2.5, // Change the border width here
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(
                    color: KonserKlikColor.yellowBase,
                    // Change the border color here
                    width: 2.5, // Change the border width here
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          InkWell(
            onTap: () {},
            child: Container(
              height: 48.5,
              width: 48.5,
              decoration: BoxDecoration(
                color: KonserKlikColor.yellowBase,
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Icon(
                Icons.search_rounded,
                color: Colors.white,
                size: 28,
              ),
            ),
          )
        ],
      ),
    );
  }
}
