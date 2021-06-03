//
//  Quiz.swift
//  SwiftQuiz
//
//  Created by Luiz Brandão on 03/06/21.
//

import Foundation

class Quiz {
    
    let question: String
    let options: [String]
    private let correctedAnswer: String
    
    init(question: String, options: [String], correctAnswer: String) {
        self.question = question
        self.options = options
        self.correctedAnswer = correctAnswer
    }
    
    func validadeOption(_ index: Int) -> Bool {
        let answer = options[index]
        
        return answer == correctedAnswer
    }
    
    deinit {
        print("Liberou Quiz da memoria")
    }
    
}
