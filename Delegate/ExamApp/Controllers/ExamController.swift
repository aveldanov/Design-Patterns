//
//  ExamController.swift
//  MVC-Exam-Questions
//

import UIKit

// Making this VC a delegate
// Providing look and feel
// Providing Data for the tableView
// Responsibility of the UITableViewDataSource and UITableViewDelegate is Delegated to this Controller

class ExamController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!

    private var questionsArray: [Question] = [Question]()
    let questionService = QuestionService()

    override func viewDidLoad() {
        super.viewDidLoad()

        questionsArray = questionService.getAll()
        tableView.reloadData()

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionsArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = questionsArray[indexPath.row].text
        return cell
    }
}
