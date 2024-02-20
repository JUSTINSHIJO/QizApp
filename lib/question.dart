import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('do you have cofee?', style: TextStyle(fontSize: 30)),
         TextButton(onPressed: (){}, child: Text('YES'),
             style: ButtonStyle(
               overlayColor: MaterialStateProperty.resolveWith<Color?>(
                       (Set<MaterialState> states) {
                     if (states.contains(MaterialState.focused)) return Colors.red;
                     return null; // Defer to the widget's default.
                   }),
             ) )

        ],));
  }
}
