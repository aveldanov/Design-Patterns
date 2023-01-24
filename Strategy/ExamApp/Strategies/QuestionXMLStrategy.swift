//
//  QuestionXMLStrategy.swift
//  ExamApp
//
//  Created by Anton Veldanov on 1/22/23.
//  Copyright © 2023 Anton Veldanov. All rights reserved.
//

import Foundation


class QuestionXMLStrategy: QuestionStrategy {

    var questions: [Question] = [Question]()

    var questionIndex: Int = 0

    required init(name: String) {
        // read XML file and populate the questions array
    }

    func nextQuestion() -> Question {
        return Question(text: "", point: 0, isCorrect: true)
    }


}
