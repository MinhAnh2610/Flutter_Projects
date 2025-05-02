import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: (data['correct_answer'] == data['user_answer'])
                          ? Colors.blue 
                          : Colors.red,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'].toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 5,),
                      Text(
                        data['correct_answer'] as String,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 10,
                        ),
                        textAlign: TextAlign.left,),
                      Text(data['user_answer'] as String,
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 10,
                        ),
                        textAlign: TextAlign.left,),
                      SizedBox(height: 10,),
                    ],
                  ),
                ),
              ],
            );
          },).toList(),
        ),
      ),
    );
  }
}