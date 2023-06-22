import 'package:flutter/material.dart';

class AppbarwithSearch extends StatelessWidget {
  const AppbarwithSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 100,
          //color: Colors.black,
          child: AppBar(
            backgroundColor: Colors.black,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25)),
            ),
            /* leading: const InkWell(
              onTap: null,
              child: Icon(Icons.keyboard_backspace),
            ),*/
          ),
        ),
        Center(
          child: Container(
            padding: const EdgeInsets.only(top: 80),
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                side: BorderSide(
                  color: Colors.amber,
                  width: 5,
                ),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                padding: EdgeInsets.all(5),
                child: Container(
                  //color: Colors.red,
                  margin: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                  child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search Product',
                    ),
                  ),
                ),

                //color: Colors.amber,
              ),
            ),
          ),
        )
      ],
    );
  }
}
