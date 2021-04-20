import 'package:alzheimerapp/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

var finalScore = 0;
var questionNumber = 0;
var quiz = new AnimalQuiz();

class AnimalQuiz {
  var questions = [
    "What color did the flower have?.",
    "How many words did the sentence have?.",
    "How many ears were there?",
    "which object did the arrow point away from?",
    "can you name any one of  the animals"
  ];

  var choices = [
    ["green", "yellow", "blue", "white"],
    ["eight", "nine", "ten", "six"],
    ["eight", "nine", "ten", "six"],
    ["apple", "orange", "banana", "grape"],
    ["bunny", "cat", "spider", "lizard"]
  ];

  var correctAnswers = ["yellow", "six", "eight", "banana", "bunny"];
}

class Quiz1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Quiz1State();
  }
}

class Quiz1State extends State<Quiz1> {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async => false,
        
        
                  
            
              child: Scaffold(
                 appBar: AppBar(
          leading: IconButton(
        icon: Icon(
           Icons.arrow_left, 
        ),
        onPressed:(){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return   Home();
                      }));
        }),
     
  
 
        title: Center
        (child: Text('MEMORY MASTER'),
              ),
             
        backgroundColor: Colors.teal,),
                body: new Container(
                      constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
              
              ),
                      margin: const EdgeInsets.all(5.0),
                     // alignment: Alignment.Center,
                      
                        child: new Column(
                          children: <Widget>[
                            new Padding(padding: EdgeInsets.all(10.0)),

                            Expanded(
                                                        child: new Container(
                                alignment: Alignment.centerRight,
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    new Text(
                                      "Question ${questionNumber + 1} of ${quiz.questions.length}",
                                      style: new TextStyle(fontSize: 22.0),
                                    ),
                                    new Text(
                                      "Score: $finalScore",
                                      style: new TextStyle(fontSize: 22.0),
                                    )
                                  ],
                                ),
                              ),
                            ),

                            

                           // new Padding(padding: EdgeInsets.all(5.0)),

                            new Text(
                              quiz.questions[questionNumber],
                              style: new TextStyle(
                                fontSize: 20.0,
                              ),
                            ),

                            new Padding(padding: EdgeInsets.all(5.0)),

                            Expanded(
                                                        child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  //button 1
                                  new MaterialButton(
                                    minWidth: 120.0,
                                    color: Colors.deepPurple[500],
                                    onPressed: () {
                                      if (quiz.choices[questionNumber][0] ==
                                          quiz.correctAnswers[questionNumber]) {
                                        debugPrint("Correct");
                                        finalScore++;
                                      } else {
                                        debugPrint("Wrong");
                                      }
                                      updateQuestion();
                                    },
                                    child: new Text(
                                      quiz.choices[questionNumber][0],
                                      style:
                                          new TextStyle(fontSize: 20.0, color: Colors.white),
                                    ),
                                  ),

                                  //button 2
                                  new MaterialButton(
                                    minWidth: 120.0,
                                    color: Colors.deepPurple[500],
                                    onPressed: () {
                                      if (quiz.choices[questionNumber][1] ==
                                          quiz.correctAnswers[questionNumber]) {
                                        debugPrint("Correct");
                                        finalScore++;
                                      } else {
                                        debugPrint("Wrong");
                                      }
                                      updateQuestion();
                                    },
                                    child: new Text(
                                      quiz.choices[questionNumber][1],
                                      style:
                                          new TextStyle(fontSize: 20.0, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //new Padding(padding: EdgeInsets.all(1.0)),

                            //Expanded(
                                                         new Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  //button 3
                                  new MaterialButton(
                                    minWidth: 120.0,
                                    color: Colors.deepPurple[500],
                                    onPressed: () {
                                      if (quiz.choices[questionNumber][2] ==
                                          quiz.correctAnswers[questionNumber]) {
                                        debugPrint("Correct");
                                        finalScore++;
                                      } else {
                                        debugPrint("Wrong");
                                      }
                                      updateQuestion();
                                    },
                                    child: new Text(
                                      quiz.choices[questionNumber][2],
                                      style: new TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),

                                  //button 4
                                  new MaterialButton(
                                    minWidth: 120.0,
                                    color: Colors.deepPurple[500],
                                    onPressed: () {
                                      if (quiz.choices[questionNumber][3] ==
                                          quiz.correctAnswers[questionNumber]) {
                                        debugPrint("Correct");
                                        finalScore++;
                                      } else {
                                        debugPrint("Wrong");
                                      }
                                      updateQuestion();
                                    },
                                    child: new Text(
                                      quiz.choices[questionNumber][3],
                                      style:
                                          new TextStyle(fontSize: 20.0, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                           // ),

                            new Padding(padding: EdgeInsets.all(5.0)),

                            Expanded(
                                                        child: new Container(
                                  alignment: Alignment.bottomCenter,
                                  child: new MaterialButton(
                                      minWidth: 240.0,
                                      height: 30.0,
                                      color: Colors.red,
                                      onPressed: resetQuiz,
                                      child: new Text(
                                        "Quit",
                                        style: new TextStyle(
                                            fontSize: 18.0, color: Colors.white),
                                      ))),
                            ),
                          ],
                        ),
                      ),
                ),
                  
            
              );
    
        
  }

  void resetQuiz() {
    setState(() {
      Navigator.pop(context);
      finalScore = 0;
      questionNumber = 0;
    });
  }

  void updateQuestion() {
    setState(() {
      if (questionNumber == quiz.questions.length - 1) {
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) => new Summary(
                      score: finalScore,
                    )));
      } else {
        questionNumber++;
      }
    });
  }
}



class Summary extends StatelessWidget {
  final int score;
  
  Summary({Key key, @required this.score}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Center(
          child: new Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  "Final Score: $score",
                  style: new TextStyle(fontSize: 35.0),
                  
                ),
               
                if (score>=4)
                 new Text(
                  "YOU HAVE EXCELLENT MEMORY",
                  style: new TextStyle(fontSize: 35.0),
                 ),
                new Text(
                  "KINDLY VISIT A DOCTOR",
                  style: new TextStyle(fontSize: 25.0),
                  
                ),
                

                new Padding(padding: EdgeInsets.all(30.0)),
                new MaterialButton(
                  color: Colors.red,
                  onPressed: () {
                    questionNumber = 0;
                    finalScore = 0;
                    Navigator.pop(context);
                  },
                  child: new Text(
                    "Reset Quiz",
                    style: new TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
