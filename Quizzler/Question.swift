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
    let answer : String;
    
    init(q : String, a: String) {
        self.question = q;
        self.answer = a;
    }
}
