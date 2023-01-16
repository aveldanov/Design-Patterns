//
//  AddQuestionTableViewController.swift
//  ExamApp
//
//  Created by Anton Veldanov on 1/15/23.
//  Copyright © 2023 Anton Veldanov. All rights reserved.
//

import UIKit

class AddQuestionTableViewController: UITableViewController {

    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var pointTextField: UITextField!
    @IBOutlet weak var isCorrectSegmentedControl: UISegmentedControl!

    private var isCorrect: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()

        isCorrectSegmentedControl.removeTarget(self, action: #selector(isCorrectSegmentControlSelected), for: .touchUpInside)
    }



    @objc func isCorrectSegmentControlSelected(segmentedControl: UISegmentedControl) {
        isCorrect = segmentedControl.selectedSegmentIndex == 0 ? true : false
    }


    @IBAction func close() {

    }

    @IBAction func save() {

        // force unwrap for simplicity
        let text = questionTextField.text!
        let point = Double(questionTextField.text!)!
        let newQuestion = Question(text: text, point: point, isCorrect: isCorrect)
    }
}
