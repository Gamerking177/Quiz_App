import 'package:cloud_firestore/cloud_firestore.dart';

class HomeFire {
  static Future<List<Map<String?, dynamic>>> getquizes() async {
    List<Map<String?, dynamic>> all_quiz = [];
    await FirebaseFirestore.instance
        .collection("quizes")
        .get()
        .then((quarySnapshot) {
      quarySnapshot.docs.forEach((quiz) {
        Map<String?, dynamic> myQuiz = quiz.data();
        myQuiz["Quizid"] = quiz.reference.id;
        print(quiz.data());

        all_quiz.add(quiz.data());
      });
    });

    return all_quiz;
  }
}
