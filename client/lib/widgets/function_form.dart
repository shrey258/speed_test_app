import 'package:flutter/material.dart';
import '../model/data_type.dart';

class FunctionForm extends StatefulWidget {
  const FunctionForm({super.key});

  @override
  State<FunctionForm> createState() => _FunctionFormState();
}

class _FunctionFormState extends State<FunctionForm> {
  List<bool> isSelected = [false, false];
  List<DataType> dataTypes = [
    DataType(10, false),
    DataType(15, false),
    DataType(20, false),
    DataType(25, false),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 200,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.circular(13),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color
            spreadRadius: 5.0, // Adjusts how far the shadow spreads
            blurRadius: 7.0, // Adjusts the blur amount of the shadow
            offset: const Offset(0.0, 4.0), // Adjusts the shadow's offset
          ),
        ],
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Select the function you want to test',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: const Color.fromRGBO(0, 0, 255, 1),
                    width: 1,
                  ),
                ),
                child: TextButton(
                  onPressed: () => setState(() => isSelected = [true, false]),
                  style: TextButton.styleFrom(
                    backgroundColor: isSelected[0]
                        ? const Color.fromRGBO(0, 10, 255, 1)
                        : const Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Text(
                    'Download',
                    style: TextStyle(
                      color: isSelected[0]
                          ? const Color.fromRGBO(255, 255, 255, 1)
                          : const Color.fromRGBO(0, 0, 255, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: const Color.fromRGBO(0, 0, 255, 1),
                    width: 1,
                  ),
                ),
                child: TextButton(
                  onPressed: () => setState(() => isSelected = [false, true]),
                  style: TextButton.styleFrom(
                    backgroundColor: isSelected[1]
                        ? const Color.fromRGBO(0, 10, 255, 1)
                        : const Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Text(
                    'Upload',
                    style: TextStyle(
                      color: isSelected[1]
                          ? const Color.fromRGBO(255, 255, 255, 1)
                          : const Color.fromRGBO(0, 0, 255, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}