//
//  QuestionStrategy.swift
//  ExamApp
//
//  Created by Anton Veldanov on 1/22/23.
//  Copyright © 2023 Anton Veldanov. All rights reserved.
//

import Foundation

protocol QuestionStrategy {

    var questions: [Question] { get set }
    var questionIndex: Int { get set }

    init(name: String)

    func nextQuestion() -> Question
}
