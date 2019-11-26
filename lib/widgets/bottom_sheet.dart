import 'package:flutter/material.dart';
import 'package:partial_gallery/widgets/Search_chip.dart';

class ChipFilters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      height: 50,
      child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
        SizedBox(width: 10),
        ActionChip(
          label: Icon(Icons.swap_horiz),
          onPressed: () {},
        ),
        SizedBox(width: 10),
        // ChipS("Pricing", () {
        //   print("custom chip");
        // }),
        // SizedBox(width: 15),
        ActionChip(
          label: Text("Scale"),
          avatar: Icon(Icons.keyboard_arrow_down),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext bc) {
                  return Container(
                    height: MediaQuery.of(context).size.height * .25,

                    // height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("Price Range"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            ButtonTheme(
                              minWidth: 70,
                              height: 70,
                              child: OutlineButton(
                                highlightedBorderColor: Colors.black,
                                // shape: CircleBorder(),
                                child: Text("With:"),
                                onPressed: () {},
                              ),
                            ),
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
                });
          },
        ),
        SizedBox(width: 10),
        ActionChip(
          label: Text("Pricing"),
          avatar: Icon(Icons.keyboard_arrow_down),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext bc) {
                  return Container(
                    height: MediaQuery.of(context).size.height * .25,

                    // height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("Price Range"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            ButtonTheme(
                              minWidth: 70,
                              height: 70,
                              child: OutlineButton(
                                highlightedBorderColor: Colors.black,
                                shape: CircleBorder(),
                                child: Text("\$"),
                                onPressed: () {},
                              ),
                            ),
                            ButtonTheme(
                              minWidth: 70,
                              height: 70,
                              child: OutlineButton(
                                highlightedBorderColor: Colors.black,
                                shape: CircleBorder(),
                                child: Text("\$\$"),
                                onPressed: () {},
                              ),
                            ),
                            ButtonTheme(
                              minWidth: 70,
                              height: 70,
                              child: OutlineButton(
                                highlightedBorderColor: Colors.black,
                                shape: CircleBorder(),
                                child: Text("\$\$\$"),
                                onPressed: () {},
                              ),
                            ),
                            ButtonTheme(
                              minWidth: 70,
                              height: 70,
                              child: OutlineButton(
                                highlightedBorderColor: Colors.black,
                                shape: CircleBorder(),
                                child: Text("\$\$\$\$"),
                                onPressed: () {},
                              ),
                            ),
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
                });
          },
        )
      ]),
    );
  }
}
