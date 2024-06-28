import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> occupation = [
    'Investor',
    'Agent / Agency',
    'Developers',
    'Others',
  ];
  String selected = 'Investor';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<String>(
              isExpanded: true,
              items: [
                // Label item
                const DropdownMenuItem<String>(
                  value: null,
                  enabled: false,
                  child: Text(
                    'Select',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                ),
                // Occupation items
                ...occupation.map((String item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
              ],
              value: selected,
              onChanged: (value) {
                setState(() {
                  selected = value!;
                });
              },
              buttonStyleData: ButtonStyleData(
                height: 70,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 14, right: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: Colors.black26,
                  ),
                  color: Colors.white,
                ),
                elevation: 2,
              ),
              iconStyleData: IconStyleData(
                icon: Image.asset(
                  'assets/img.png',
                  width: 15,
                  height: 10,
                ),
                iconSize: 10,
                openMenuIcon: Image.asset(
                  'assets/img_1.png',
                  width: 15,
                  height: 10,
                ),
                iconEnabledColor: Colors.grey,
                iconDisabledColor: Colors.black,
              ),
              dropdownStyleData: DropdownStyleData(
                maxHeight: 400,
                width: 370,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.white,
                ),
                offset: const Offset(0, -10),
              ),
              menuItemStyleData: const MenuItemStyleData(
                height: 45,
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
