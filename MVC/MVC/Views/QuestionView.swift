//
//  QuestionView.swift
//  MVC
//
//  Created by Anton Veldanov on 1/13/23.
//

import UIKit

class QuestionView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet var questionLabel: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()

    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()

    }

    private func commonInit() {
        Bundle.main.loadNibNamed("QuestionView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
}
