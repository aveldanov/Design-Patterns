//
//  QuestionsTableViewController.swift
//  ExamApp

import UIKit

class QuestionsViewController: UIViewController {
    
    @IBOutlet weak var questionTextLabel: UILabel!
    
    var questionGroup: QuestionGroup!
    private var questions = [Question]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.largeTitleDisplayMode = .never
        self.title = questionGroup.displayName
       
    }
    
    @IBAction func nextQuestionButtonPressed() {
       
    }
    
    
}

