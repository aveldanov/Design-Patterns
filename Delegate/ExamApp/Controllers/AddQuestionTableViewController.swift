//
//  AddQuestionTableViewController.swift
//  ExamApp
//
//  Created by Anton Veldanov on 1/15/23.
//  Copyright © 2023 Anton Veldanov. All rights reserved.
//

import UIKit

protocol AddQuesitonDelegate {
    // list of methods that VC that conforming to it should implement
    // passing controller - for the ExamController to be able to dismiss AddQuestionTableViewController
    func addQuestionDidSaveQuestion(question: Question, controller: UITableViewController)

    func closeButtonDidClose(controller: UITableViewController)
}

class AddQuestionTableViewController: UITableViewController {

    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var pointTextField: UITextField!
    @IBOutlet weak var isCorrectSegmentedControl: UISegmentedControl!

    var delegate: AddQuesitonDelegate!

    private var isCorrect: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()

        isCorrectSegmentedControl.removeTarget(self, action: #selector(isCorrectSegmentControlSelected), for: .touchUpInside)
    }

    @objc
    func isCorrectSegmentControlSelected(segmentedControl: UISegmentedControl) {
        isCorrect = segmentedControl.selectedSegmentIndex == 0 ? true : false
    }

    @IBAction func close() {
        delegate.closeButtonDidClose(controller: self)

    }

    @IBAction func save() {

        // force unwrap for simplicity
        let text = questionTextField.text!
        let point = Double(pointTextField.text!)!
        
        let newQuestion = Question(text: text, point: point, isCorrect: isCorrect)

        delegate.addQuestionDidSaveQuestion(question: newQuestion, controller: self)
    }
}
