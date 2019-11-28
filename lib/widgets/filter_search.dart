import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:partial_gallery/widgets/price_bottomSheet.dart';
import 'package:partial_gallery/widgets/scale_bottomSheet.dart';
// import 'package:partial_gallery/widgets/Search_chip.dart';

class ChipFilters extends StatefulWidget {
  @override
  _ChipFiltersState createState() => _ChipFiltersState();
}

class _ChipFiltersState extends State<ChipFilters> {
  // Color chipColorChange = Colors.grey[350];
  // Color fontColorChange = Colors.black;

  void changeColor() {
    setState(() {
      // chipColorChange = Colors.black;
      // fontColorChange = Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
        SizedBox(width: 10),
        ActionChip(
          label: Icon(Icons.swap_horiz),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext bc) {
                  return Column(
                    children: <Widget>[
                      ScaleBottomSheetSwitch(),
                      PriceBottomSheetSwitch(),
                    ],
                  );
                });
          },
        ),
        SizedBox(width: 10),
        // ChipS("Pricing", () {
        //   print("custom chip");
        // }),
        // SizedBox(width: 15),
        ActionChip(
          label: Text(
            "Scale",
            style: TextStyle(color: Colors.black),
          ),
          avatar: Icon(Icons.keyboard_arrow_down),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext bc) {
                  return ScaleBottomSheetSwitch();
                });
          },
        ),
        SizedBox(width: 10),
        ActionChip(
          // backgroundColor: _chipColorChange,
          label: Text("Pricing"),
          avatar: Icon(Icons.keyboard_arrow_down),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext bc) {
                  return PriceBottomSheetSwitch();
                });
          },
        ),
        SizedBox(width: 10),
        ActionChip(
          label: Text("Color"),
          avatar: Icon(Icons.keyboard_arrow_down),
          onPressed: () {},
        ),
        SizedBox(
          width: 10,
        ),
        ActionChip(
          // backgroundColor: _chipColorChange,
          label: Text("Type"),
          avatar: Icon(Icons.keyboard_arrow_down),
          onPressed: () {
            // showModalBottomSheet(
            //     context: context,
            //     builder: (BuildContext bc) {
            //       return PriceBottomSheetSwitch();
            //     });
          },
        ),
        SizedBox(width: 10),
      ]),
    );
  }
}
