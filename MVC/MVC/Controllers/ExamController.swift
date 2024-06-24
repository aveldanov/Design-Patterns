//
//  ExamController.swift
//  MVC
//
//  Created by Anton Veldanov on 1/13/23.
//

import UIKit

class ExamController: UIViewController {

    @IBOutlet weak var questionView: QuestionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let question = Question(text: "Quesiton 1", point: 2, isCorrect: true)
        questionView.questionLabel.text = question.text
    }
}
