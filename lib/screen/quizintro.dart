import 'package:flutter/material.dart';

class QuizIntro extends StatefulWidget {
  String quizname;
  String quizimgurl;
  String quiztopics;
  String quizduration;
  String quizabout;
  QuizIntro(
      {required this.quizname,
      required this.quizabout,
      required this.quizduration,
      required this.quizimgurl,
      required this.quiztopics});

  @override
  State<QuizIntro> createState() => _QuizIntroState();
}

class _QuizIntroState extends State<QuizIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton(
        onPressed: () {},
        child: Text(
          "START QUIZ",
          style: TextStyle(fontSize: 20),
        ),
      ),
      appBar: AppBar(
        title: Text("KBC QUIZ APP"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.quizname,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              // problem kya hai
              Image.network(
                "https://images.unsplash.com/photo-1434030216411-0b793f4b4173?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                fit: BoxFit.cover,
                height: 230,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                padding: EdgeInsets.all(18),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.topic_outlined),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "Related To -",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Text(
                      widget.quiztopics,
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(18),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.topic_outlined),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "Duration -",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Text(
                      widget.quizduration,
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(18),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.topic_outlined),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "About Quiz -",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Text(
                      widget.quizabout,
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
