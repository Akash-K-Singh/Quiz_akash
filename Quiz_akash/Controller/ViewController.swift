//
//  ViewController.swift
//  Quiz_akash
//
//  Created by Shruti Makwana on 01/03/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    var quizBrain = QuizBrain()
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.tag == 1 ? "TRUE" : "FALSE"
        let userGotItRight = quizBrain.checkAnswed(userAnswer)
        
        if(userGotItRight){
            sender.backgroundColor = UIColor.green
        }else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.increaseQuestionNumber()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil , repeats: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trueButton.layer.cornerRadius = 15
        trueButton.clipsToBounds = true
        falseButton.layer.cornerRadius = 15
        falseButton.clipsToBounds = true
        updateUI()
    }

    @objc func updateUI(){
        questionLabel.text = quizBrain.getQuestionText()
        trueButton.backgroundColor = UIColor.systemIndigo
        falseButton.backgroundColor = UIColor.systemIndigo
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score : \(quizBrain.getScore())"
    }

}

