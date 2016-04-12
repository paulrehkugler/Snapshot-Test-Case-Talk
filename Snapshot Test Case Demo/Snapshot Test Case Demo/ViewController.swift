//
//  ViewController.swift
//  Snapshot Test Case Demo
//
//  Created by Paul Rehkugler on 4/9/16.
//  Copyright © 2016 Binary Tapes. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    var button: UIButton?
    var label: UILabel?

    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()

        // 1 - Single background color

        view.backgroundColor = .whiteColor()

        // 2 - Add a button

        let button = UIButton(type: .System)
        button.setTitle("world", forState: .Normal)
        button.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(button)

        self.button = button

        // 3 - Stack label above button

        let label = UILabel()
        label.text = "Hello"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.borderColor = UIColor.redColor().CGColor
        label.layer.borderWidth = 1

        view.addSubview(label)

        self.label = label

        updateViewConstraints()
    }

    override func updateViewConstraints() {
        view.removeConstraints(view.constraints)

        super.updateViewConstraints()

        // 2

        guard let button = button else {
            fatalError("It's expected that the view has loaded before updateViewConstraints() is called.")
        }

        // TODO: comment me out after #2
//        NSLayoutConstraint.activateConstraints([
//            button.leadingAnchor.constraintEqualToAnchor(view.leadingAnchor),
//            button.trailingAnchor.constraintEqualToAnchor(view.trailingAnchor),
//            button.topAnchor.constraintEqualToAnchor(view.topAnchor),
//            button.bottomAnchor.constraintEqualToAnchor(view.bottomAnchor),
//            button.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor)
//            ])

        // 3

        guard let label = label else {
            fatalError("It's expected that the view has loaded before updateViewConstraints() is called.")
        }

        // TODO: comment me out after #3
//        NSLayoutConstraint.activateConstraints([
//            button.leadingAnchor.constraintEqualToAnchor(view.leadingAnchor),
//            button.trailingAnchor.constraintEqualToAnchor(view.trailingAnchor),
//            button.bottomAnchor.constraintEqualToAnchor(view.bottomAnchor),
//            button.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor),
//
//            button.topAnchor.constraintEqualToAnchor(label.bottomAnchor),
//            button.heightAnchor.constraintEqualToAnchor(label.heightAnchor),
//
//            label.topAnchor.constraintEqualToAnchor(view.topAnchor),
//            label.leadingAnchor.constraintEqualToAnchor(view.leadingAnchor),
//            label.trailingAnchor.constraintEqualToAnchor(view.trailingAnchor),
//            label.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor)
//            ])

        // 4

        switch traitCollection.horizontalSizeClass {
        case .Regular:
            NSLayoutConstraint.activateConstraints([
                button.bottomAnchor.constraintEqualToAnchor(view.bottomAnchor),
                button.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor),
                button.widthAnchor.constraintEqualToAnchor(view.widthAnchor, multiplier: 0.5, constant: 0),

                button.topAnchor.constraintEqualToAnchor(label.bottomAnchor),
                button.heightAnchor.constraintEqualToAnchor(label.heightAnchor),

                label.topAnchor.constraintEqualToAnchor(view.topAnchor),
                label.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor),
                label.widthAnchor.constraintEqualToAnchor(view.widthAnchor, multiplier: 0.5, constant: 0)
                ])

        case .Compact, .Unspecified:
            NSLayoutConstraint.activateConstraints([
                button.leadingAnchor.constraintEqualToAnchor(view.leadingAnchor),
                button.trailingAnchor.constraintEqualToAnchor(view.trailingAnchor),
                button.bottomAnchor.constraintEqualToAnchor(view.bottomAnchor),
                button.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor),

                button.topAnchor.constraintEqualToAnchor(label.bottomAnchor),
                button.heightAnchor.constraintEqualToAnchor(label.heightAnchor),

                label.topAnchor.constraintEqualToAnchor(view.topAnchor),
                label.leadingAnchor.constraintEqualToAnchor(view.leadingAnchor),
                label.trailingAnchor.constraintEqualToAnchor(view.trailingAnchor),
                label.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor),
                ])

        }
    }
}

