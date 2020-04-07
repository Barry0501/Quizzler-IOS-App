//
//  Question.swift
//  Quizzler
//
//  Created by Barry on 4/7/20.
//  Copyright © 2020 Barry. All rights reserved.
//

import Foundation

struct Question {
    let question : String;
    let answers : [String];
    let rightAnswer : String;
    
    init(q : String, a: [String], correctAnswer : String) {
        self.question = q;
        self.answers = a;
        self.rightAnswer = correctAnswer;
    }
}
