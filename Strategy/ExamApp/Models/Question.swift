//
//  Question.swift
//  ExamApp

import Foundation

struct Question: Decodable {
    
    var text: String
    var point: Double
    var isCorrect: Bool
}
