import 'package:flutter/material.dart';

class PriceBottomSheetSwitch extends StatefulWidget {
  @override
  _PriceBottomSheetSwitch createState() => _PriceBottomSheetSwitch();
}

class _PriceBottomSheetSwitch extends State<PriceBottomSheetSwitch> {
  bool pressAttention$ = false;
  bool pressAttention$$ = false;
  bool pressAttention$$$ = false;
  bool pressAttention$$$$ = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            "Price Range",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ButtonTheme(
                minWidth: 70,
                height: 70,
                child: FlatButton(
                  color: pressAttention$
                      ? Colors.grey[600]
                      : Color.fromRGBO(0, 0, 0, 0),
                  shape: CircleBorder(
                      side: BorderSide(
                    color: Colors.grey[350],
                    width: 1,
                  )),
                  child: Text("\$"),
                  onPressed: () =>
                      setState(() => pressAttention$ = !pressAttention$),
                ),
              ),
              ButtonTheme(
                minWidth: 70,
                height: 70,
                child: FlatButton(
                  color: pressAttention$$
                      ? Colors.grey[600]
                      : Color.fromRGBO(0, 0, 0, 0),
                  shape: CircleBorder(
                      side: BorderSide(
                    color: Colors.grey[350],
                    width: 1,
                  )),
                  child: Text("\$\$"),
                  onPressed: () =>
                      setState(() => pressAttention$$ = !pressAttention$$),
                ),
              ),
              ButtonTheme(
                minWidth: 70,
                height: 70,
                child: FlatButton(
                  color: pressAttention$$$
                      ? Colors.grey[600]
                      : Color.fromRGBO(0, 0, 0, 0),
                  shape: CircleBorder(
                      side: BorderSide(
                    color: Colors.grey[350],
                    width: 1,
                  )),
                  child: Text("\$\$\$"),
                  onPressed: () =>
                      setState(() => pressAttention$$$ = !pressAttention$$$),
                ),
              ),
              ButtonTheme(
                minWidth: 70,
                height: 70,
                child: FlatButton(
                  color: pressAttention$$$$
                      ? Colors.grey[600]
                      : Color.fromRGBO(0, 0, 0, 0),
                  shape: CircleBorder(
                      side: BorderSide(
                    color: Colors.grey[350],
                    width: 1,
                  )),
                  child: Text("\$\$\$\$"),
                  onPressed: () =>
                      setState(() => pressAttention$$$$ = !pressAttention$$$$),
                ),
              ),
            ],
          ),
          RaisedButton(
            child: Text("Apply"),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
