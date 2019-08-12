import 'package:flutter/material.dart';

class PageProgress extends StatefulWidget {
  @override
  _PageProgressState createState() {
    return _PageProgressState();
  }
}

class _PageProgressState extends State<PageProgress> {
  int progress = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: NewUserProgressWidget(progress),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          progress += 10;
        });
      }),
    );
  }
}

class NewUserProgressWidget extends StatelessWidget {
  int progress;
  double width = 60;
  double height = 5;
  double radius = 5;

  NewUserProgressWidget(this.progress);

  @override
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          child: Stack(
            children: <Widget>[
              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(color: Colors.red),
              ),
              Positioned(
                left: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(radius)),
                  child: Container(
                    width: progress / 100 * width,
                    height: height,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
