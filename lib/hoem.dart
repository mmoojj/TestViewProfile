import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:testdesign2/appbar.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget listItem(Color color, double progress, String title, String subtitle,
        Color progresscolor) {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          width: 20,
          height: 25,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(30)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Text(
                      (progress * 100).toInt().toString() + "%",
                      style: TextStyle(color: Colors.white),
                    ),
                    Container(
                      width: 55,
                      height: 55,
                      child: CircularProgressIndicator(
                        value: progress,
                        strokeWidth: 4,
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                        backgroundColor: progresscolor,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 40,
                ),
                child: Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  subtitle,
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
        appBar: AppBarCostum(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My tasks",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xff309397)),
                        child: Icon(
                          Icons.work_outline,
                          color: Colors.white,
                          size: 15,
                        ))
                  ],
                ),
              ),
              ListView(
                semanticChildCount: 3,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                primary: false,
                padding: EdgeInsets.all(10),
                children: [
                  ListTile(
                    title: Text("TO Do"),
                    subtitle: Text("5 tasks now - 1 started"),
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffe46472)),
                      child: Icon(
                        Icons.timer,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text("Done"),
                    subtitle: Text("18 tasks now - 18 completed"),
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xff6488e4)),
                      child: Icon(
                        Icons.done,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text("In Progress"),
                    subtitle: Text("1 tasks now - 1 started"),
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xfff9be7c)),
                      child: Icon(
                        Icons.settings_backup_restore,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("Active Projects",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                  GridView.builder(
                      shrinkWrap: true,
                      primary: false,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: 4,
                      itemBuilder: (buildcontext, item) {
                        switch (item) {
                          case 0:
                            return listItem(
                                Color(0xdd309397),
                                0.7,
                                "Medical App",
                                "9 hours progress",
                                Color(0xff309397));
                            break;
                          case 1:
                            return listItem(Color(0xdde46472), 0.5, "Sport App",
                                "40 hours progress", Color(0xffe46472));
                            break;
                          case 2:
                            return listItem(
                                Color(0xddf9be7c),
                                0.3,
                                "Programmin App",
                                "50 hours progress",
                                Color(0xfff9be7c));
                            break;
                          case 3:
                            return listItem(
                                Color(0xdd6488e4),
                                0.4,
                                "Education App",
                                "30 hours progress",
                                Color(0xff6488e4));
                        }
                      })
                ],
              )
            ],
          )),
        ));
  }
}
