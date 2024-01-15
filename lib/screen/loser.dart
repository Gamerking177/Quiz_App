import 'package:flutter/material.dart';

class Looser extends StatelessWidget {
  const Looser({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/img/loose.png"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        floatingActionButton:
            ElevatedButton(onPressed: () {}, child: Text("Retry Once")),
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Oh Sorry!",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                "YOUR ANSWER IS INCORRECT",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "You loss",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              Text(
                "Rs - 43,000",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(
                height: 25,
              ),
              Icon(
                Icons.error_outline,
                size: 100,
                color: Colors.white,
              ),
              ElevatedButton(onPressed: () {}, child: Text("Go To Rewards"))
            ],
          ),
        ),
      ),
    );
  }
}
