//
//  QuestionService.swift
//  ExamApp
//
//  Created by Anton Veldanov on 1/15/23.
//

import Foundation

class QuestionService {

    private var questionArray: [Question] = [Question]()

    func getAll() -> [Question] {
        return questionArray
//        return [Question(text: "Is Earth Round?", point: 10, isCorrect: true),
//                Question(text: "Is 2 + 2 = 4", point: 10, isCorrect: true),
//                Question(text: "Is the Moon flat", point: 5, isCorrect: false)
//        ]
    }

    func add(question: Question) {
        questionArray.append(question)
    }
}
