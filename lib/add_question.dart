import 'package:flutter/material.dart';

class AddQuestion extends StatefulWidget {
  @override
  _AddQuestionState createState() => _AddQuestionState();
}

class _AddQuestionState extends State<AddQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black54,
        ),
        title: const Text('QuizMaker'),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Form(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              TextFormField(
                validator: (val) => val!.isEmpty ? "Enter Question" : null,
                decoration: InputDecoration(hintText: "Question"),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                validator: (val) => val!.isEmpty ? "Option1 " : null,
                decoration:
                    InputDecoration(hintText: "Option1 (Correct Answer)"),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                validator: (val) => val!.isEmpty ? "Option2 " : null,
                decoration: InputDecoration(hintText: "Option2"),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                validator: (val) => val!.isEmpty ? "Option3 " : null,
                decoration: InputDecoration(hintText: "Option3"),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                validator: (val) => val!.isEmpty ? "Option4 " : null,
                decoration: InputDecoration(hintText: "Option4"),
              ),
              SizedBox(
                height: 8,
              ),
              Spacer(),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width / 2 - 20,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        "Submit",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width / 2 - 40,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        "Add Question",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
