import 'package:flutter/material.dart';

class ScaleBottomSheetSwitch extends StatefulWidget {
  @override
  _ScaleBottomSheetSwitchState createState() => _ScaleBottomSheetSwitchState();
}

class _ScaleBottomSheetSwitchState extends State<ScaleBottomSheetSwitch> {
  RangeValues widthValues = RangeValues(30, 70);
  RangeValues heightValues = RangeValues(20, 100);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .30,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            "Scale",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(left: 25),
                alignment: Alignment.centerLeft,
                child: Text("Width:"),
              ),
              RangeSlider(
                  min: 0,
                  max: 100,
                  values: widthValues,
                  onChanged: (RangeValues values) {
                    setState(() {
                      if (values.end - values.start >= 20) {
                        widthValues = values;
                      } else {
                        if (widthValues.start == values.start) {
                          widthValues = RangeValues(
                              widthValues.start, widthValues.start + 20);
                        } else {
                          widthValues = RangeValues(
                              widthValues.end - 20, widthValues.end);
                        }
                      }
                    });
                  }),
              SizedBox(height: 25),
              Container(
                padding: const EdgeInsets.only(left: 25),
                alignment: Alignment.centerLeft,
                child: Text("Height:"),
              ),
              RangeSlider(
                  min: 0,
                  max: 100,
                  values: heightValues,
                  onChanged: (RangeValues values) {
                    setState(() {
                      if (values.end - values.start >= 20) {
                        heightValues = values;
                      } else {
                        if (heightValues.start == values.start) {
                          heightValues = RangeValues(
                              heightValues.start, heightValues.start + 20);
                        } else {
                          heightValues = RangeValues(
                              heightValues.end - 20, heightValues.end);
                        }
                      }
                    });
                  }),
            ],
          ),
          RaisedButton(
            child: Text("Apply"),
            onPressed: () {
              Navigator.pop(context);
              print("Apply Button has been pressed");
            },
          )
        ],
      ),
    );
  }
}
