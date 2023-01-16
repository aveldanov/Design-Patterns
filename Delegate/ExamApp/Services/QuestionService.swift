//
//  QuestionService.swift
//  ExamApp
//
//  Created by Anton Veldanov on 1/15/23.
//

import Foundation

class QuestionService {
    func getAll() -> [Question] {
        return [Question(text: "Is Earth Round?", point: 10, isCorrect: true),
                Question(text: "Is 2 + 2 = 4", point: 10, isCorrect: true),
                Question(text: "Is the Moon flat", point: 5, isCorrect: false)
        ]
    }
}
