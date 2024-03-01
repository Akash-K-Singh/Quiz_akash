import Foundation

struct QuizBrain{
    let questions: [Question] = [
        Question(question: "The capital of Australia is Sydney.", answer: "FALSE"),
        Question(question: "Antarctica is the largest desert in the world.", answer: "TRUE"),
        Question(question: "The Great Wall of China is visible from space.", answer: "FALSE"),
        Question(question: "The Amazon River is the longest river in the world.", answer: "FALSE"),
        Question(question: "Bananas grow on trees.", answer: "FALSE"),
        Question(question: "The Earth's moon has its own magnetic field.", answer: "FALSE"),
        Question(question: "The Sahara Desert is the hottest place on Earth.", answer: "FALSE"),
        Question(question: "Dolphins are fish.", answer: "FALSE"),
        Question(question: "The Statue of Liberty was a gift from France to the United Kingdom.", answer: "FALSE"),
        Question(question: "The human body has 206 bones.", answer: "FALSE"),
        Question(question: "A tomato is a fruit.", answer: "TRUE"),
        Question(question: "Mount Everest is the tallest mountain on Earth.", answer: "TRUE"),
        Question(question: "Cats can see in complete darkness.", answer: "TRUE"),
        Question(question: "Goldfish have a three-second memory.", answer: "FALSE"),
        Question(question: "The Great Wall of China is the longest wall in the world.", answer: "TRUE"),
        Question(question: "The currency of Japan is the yen.", answer: "TRUE"),
        Question(question: "Water boils at 100 degrees Celsius.", answer: "TRUE"),
        Question(question: "Albert Einstein failed mathematics in school.", answer: "FALSE"),
        Question(question: "Sharks are mammals.", answer: "FALSE"),
        Question(question: "The Earth is flat.", answer: "FALSE")
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswed(_ userAnswer : String) -> Bool{
        if(userAnswer == questions[questionNumber].answer){
            score += 1;
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return questions[questionNumber].question
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(questions.count)
    }
    
    
    mutating func increaseQuestionNumber(){
        if( questionNumber < questions.count - 1 ){
            questionNumber += 1;
        }else{
            questionNumber = 0;
            score = 0;
        }
    }
    
    func getScore() -> Int {
        return score
    }
}
