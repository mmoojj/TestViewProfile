import 'package:flutter/material.dart';

class AppBarCostum extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 170,
      decoration: BoxDecoration(
        color: Color(0xfff7ab55),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, right: 10, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.notes,
                      color: Colors.black,
                    ),
                    onPressed: () => Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text("clicked")))),
                IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    onPressed: null)
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/profileimage.png"),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                      width: 75,
                      height: 75,
                      child: CircularProgressIndicator(
                        value: 0.8,
                        valueColor: AlwaysStoppedAnimation(
                          Color.fromRGBO(228, 100, 114, 0.4),
                        ),
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text(
                        "Philip mccoy",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "Project Manager",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(200);
}
