//
//  ExamController.swift
//  MVC-Exam-Questions
//


import Foundation
import UIKit

class ExamController :UIViewController {
    
    @IBOutlet weak var questionView :QuestionView! 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionView.questionTextLabel.text = "Is Earth round?"
        
    }
}
