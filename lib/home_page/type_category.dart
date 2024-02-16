import 'package:flutter/material.dart';

class TypeCategory extends StatefulWidget {
  const TypeCategory({super.key});

  @override
  State<TypeCategory> createState() => _TypeCategoryState();
}

class _TypeCategoryState extends State<TypeCategory> {
  int selectedType = 0;
  final List<String> types = [
    'In Theatre',
    'Box Office',
    'Comming Soon',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: SizedBox(
            height: 60,
            child: ListView.builder(
              itemCount: types.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 10),
              itemBuilder: (context, index) => gesture(index, context),
            ),
          ),
        ),
      ],
    );
  }

  Padding gesture(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedType = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              types[index],
              style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                  color: selectedType == index
                      ? const Color.fromARGB(146, 232, 219, 102)
                      : Colors.white.withOpacity(0.8)),
            ),
            Container(
              height: 6,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: selectedType == index
                    ? const Color.fromARGB(146, 232, 219, 102)
                    : const Color.fromARGB(0, 255, 255, 255),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
