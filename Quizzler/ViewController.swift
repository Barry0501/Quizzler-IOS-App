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
    
    var arrays = [
    ["Four + Two is equal to Six","True"],
    ["Five - Three is greater than One","True"],
    ["Three + Eight is less than Ten","False"],
    ];
    
    var questionNumber = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        updateUI();
    }
    
    
    @IBAction func answerBtnPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle;
        let actualAnswer = arrays[questionNumber][1];
        
        if(userAnswer == actualAnswer){
            print("Right");
        }else{
            print("Wrong");
        }
        
        
        if(questionNumber < arrays.count){
            questionNumber+=1;
            updateUI();
        }else{
            questionLabel.text = "No more question";
        }
    }
    
    func updateUI(){
        questionLabel.text = arrays[questionNumber][0];
    }
}

