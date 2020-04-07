//
//  ViewController.swift
//  Quizzler
//
//  Created by Barry on 4/6/20.
//  Copyright © 2020 Barry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    // list buttons choice
    @IBOutlet weak var firstChoiceBtn: UIButton!
    @IBOutlet weak var secondChoiceBtn: UIButton!
    @IBOutlet weak var thirdChoiceBtn: UIButton!
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    var quizBrain = QuizBrain();
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        updateUI();
        
        progressBar.progress = 0;
    }
    
    
    @IBAction func answerBtnPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!;
        let userGotItRight = quizBrain.checkAnswer(userAnswer);
        
        sender.backgroundColor = userGotItRight ? UIColor.green : UIColor.red;
        
        
        quizBrain.nextQuestion();
        
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI(){
        questionLabel.text = quizBrain.getQuestionText();
        progressBar.progress = quizBrain.getProgress();
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        
        // get list answers
        let answers = quizBrain.getListAnswer();
        firstChoiceBtn.setTitle(answers[0], for: .normal);
        secondChoiceBtn.setTitle(answers[1], for: .normal);
        thirdChoiceBtn.setTitle(answers[2], for: .normal);
        
        firstChoiceBtn.backgroundColor = UIColor.clear;
        secondChoiceBtn.backgroundColor = UIColor.clear;
        thirdChoiceBtn.backgroundColor = UIColor.clear;
    }
}

