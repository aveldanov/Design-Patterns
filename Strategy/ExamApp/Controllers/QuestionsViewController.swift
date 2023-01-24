//
//  QuestionsTableViewController.swift
//  ExamApp

import UIKit

class QuestionsViewController: UIViewController {
    
    @IBOutlet weak var questionTextLabel: UILabel!
    
    var questionGroup: QuestionGroup!
    private var questions = [Question]()
    var questionStrategy: QuestionStrategy!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.largeTitleDisplayMode = .never
        self.title = questionGroup.displayName

        populateQuestions()
    }


    private func populateQuestions() {

        switch  questionGroup.sourceType {
        case .json:
            self.questionStrategy = QuestionJSONStrategy(name: questionGroup.course.rawValue)
        case .xml:
            self.questionStrategy = QuestionXMLStrategy(name: questionGroup.course.rawValue)
        }

        showQuestion()
    }

    private func showQuestion() {
        let question = questionStrategy.nextQuestion()
        questionTextLabel.text = question.text
    }
    
    @IBAction func nextQuestionButtonPressed() {
        showQuestion()
    }
}

