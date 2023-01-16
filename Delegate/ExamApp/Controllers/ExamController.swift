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

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.backgroundColor = .red

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        return cell
    }
}
