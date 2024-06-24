//
//  ExamController.swift
//  MVC-Exam-Questions
//

import UIKit

// Making this VC a delegate
// Providing look and feel
// Providing Data for the tableView
// Responsibility of the UITableViewDataSource and UITableViewDelegate is Delegated to this Controller


// THIS IS A DELEGATE OF AddQuesitonController
class ExamController: UIViewController, UITableViewDelegate, UITableViewDataSource, AddQuesitonDelegate {

    @IBOutlet weak var tableView: UITableView!

    private var questionsArray: [Question] = [Question]()
    let questionService = QuestionService()

    override func viewDidLoad() {
        super.viewDidLoad()

        questionsArray = questionService.getAll()
        tableView.reloadData()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       guard let navController = segue.destination as? UINavigationController else {
           return
        }

        guard let addQuestionTableViewController = navController.viewControllers.first as? AddQuestionTableViewController else {
            return
        }

        addQuestionTableViewController.delegate = self
    }

    func addQuestionDidSaveQuestion(question: Question, controller: UITableViewController) {
        questionService.add(question: question)
        controller.dismiss(animated: true, completion: nil)

        questionsArray = questionService.getAll()

        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }

    func closeButtonDidClose(controller: UITableViewController) {
        controller.dismiss(animated: true, completion: nil)
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
