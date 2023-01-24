//
//  QuestionJSONStrategy.swift
//  ExamApp
//
//  Created by Anton Veldanov on 1/22/23.
//  Copyright © 2023 Anton Veldanov. All rights reserved.
//

import Foundation


class QuestionJSONStrategy: QuestionStrategy {

    var questions: [Question] = [Question]()
    var questionIndex: Int = 0
    var currentQuestion: Question!

    required init(name: String) {
        if let path = Bundle.main.path(forResource: name, ofType: "json") {
            let data = try! Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let questionDictionary = try! JSONDecoder().decode([String: [Question]].self, from: data)

            if let questions = questionDictionary["questions"] {
                self.questions = questions
            }
        }
    }

    func nextQuestion() -> Question {

        if questionIndex >= questions.count {
            return self.currentQuestion
        }

        self.currentQuestion = questions[questionIndex]
        questionIndex += 1

        return currentQuestion
    }


}
