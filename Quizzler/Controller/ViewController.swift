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
    @IBOutlet weak var trueBtn: UIButton!
    @IBOutlet weak var falseBtn: UIButton!
    
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
        
        trueBtn.backgroundColor = UIColor.clear;
        falseBtn.backgroundColor = UIColor.clear;
        
    }
}

