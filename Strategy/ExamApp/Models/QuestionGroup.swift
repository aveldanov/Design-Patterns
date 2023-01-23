//
//  QuestionGroup.swift
//  ExamApp

import Foundation

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
