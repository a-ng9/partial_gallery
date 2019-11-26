import 'package:flutter/material.dart';

class ChipS extends StatefulWidget {
  final String name;
  final Function action;
  ChipS(this.name, this.action);

  @override
  _ChipSState createState() => _ChipSState();
}

class _ChipSState extends State<ChipS> {
  @override
  Widget build(BuildContext context) {
    return ////chips properties
        InkWell(
      onTap: widget.action,
      // highlightColor: ,
      child: Container(
        // margin: const EdgeInsets.all(),
        padding: const EdgeInsets.only(left: 8),
        decoration: BoxDecoration(
            color: Colors.grey[350],
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              width: 2,
            ),
            Text(
              widget.name,
            ),
            /////right icon
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: IconButton(
                iconSize: 23,
                splashColor: Color.fromRGBO(0, 0, 0, 0),
                highlightColor: Color.fromRGBO(0, 0, 0, 0),
                padding: EdgeInsets.all(0.0),
                onPressed: widget.action,
                icon: Icon(
                  Icons.keyboard_arrow_down, /*size: 10*/
                ),
              ),
              height: 25,
              width: 32,
            ),
          ],
        ),
      ),
    );
  }
}
