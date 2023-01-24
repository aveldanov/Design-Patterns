//
//  QuestionGroup.swift
//  ExamApp

import Foundation

enum QuestionOrderType: Int {
    case sequential
    case random

    static var allCases: [QuestionOrderType] = [.sequential, .random]

    var title: String {
        switch self {
        case .sequential:
            return "Sequential"
        case .random:
            return "Random"
        }
    }
}

enum SourceType: String {
    case json
    case xml
}

enum Course: String {
    case math
    case geography
}

struct QuestionGroup {
    var displayName: String
    var course: Course
    var sourceType: SourceType = .json
}
