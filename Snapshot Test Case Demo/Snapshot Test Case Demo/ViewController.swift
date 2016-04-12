//
//  ViewController.swift
//  Snapshot Test Case Demo
//
//  Created by Paul Rehkugler on 4/9/16.
//  Copyright © 2016 Binary Tapes. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    private var button: UIButton?
    private var label: UILabel?
    private var containerView: UIView?

    private struct Constants {
        static let backgroundColor = UIColor(red: 54 / 255, green: 70 / 255, blue: 93 / 255, alpha: 1)

        // 2
//        static let buttonBackgroundColor = UIColor(red: 82 / 255, green: 158 / 255, blue: 204 / 255, alpha: 1)
//        static let buttonCornerRadius: CGFloat = 3
//        static let buttonTintColor = UIColor.whiteColor()
//        static let buttonTitle = NSLocalizedString(
//            "world",
//            comment: "The second word in \"Hello world\". Please don't do translations like this.")

        // 3
//        static let labelTextColor = UIColor.whiteColor()
//        static let labelFont = UIFont(name: "Futura-MediumItalic", size: 22)
//        static let labelTitle = NSLocalizedString(
//            "Hello",
//            comment: "The second word in \"Hello world\". Please don't do translations like this.")

    }

    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()

        // 1 - Single background color

        view.backgroundColor = Constants.backgroundColor

        // 2 - Add a button

//        let containerView = UIView()
//        containerView.translatesAutoresizingMaskIntoConstraints = false
//
//        view.addSubview(containerView)
//
//        self.containerView = containerView
//
//        let button = UIButton(type: .System)
//        button.setTitle(Constants.buttonTitle, forState: .Normal)
//        button.backgroundColor = Constants.buttonBackgroundColor
//        button.layer.cornerRadius = Constants.buttonCornerRadius
//        button.tintColor = Constants.buttonTintColor
//
//        button.translatesAutoresizingMaskIntoConstraints = false
//
//        containerView.addSubview(button)
//
//        self.button = button

        // 3 - Stack label above button

//        let label = UILabel()
//        label.textColor = Constants.labelTextColor
//        label.text = Constants.labelTitle
//        label.textAlignment = .Center
//        label.font = Constants.labelFont
//        label.translatesAutoresizingMaskIntoConstraints = false
//
//        containerView.addSubview(label)
//
//        self.label = label

        updateViewConstraints()
    }

    override func updateViewConstraints() {
        view.removeConstraints(view.constraints)

        super.updateViewConstraints()

        // 2

//        guard let button = button, containerView = containerView else {
//            fatalError("It's expected that the view has loaded before updateViewConstraints() is called.")
//        }
//
//        // TODO: comment me out after #2
//        NSLayoutConstraint.activateConstraints([
//            button.leadingAnchor.constraintEqualToAnchor(containerView.leadingAnchor),
//            button.trailingAnchor.constraintEqualToAnchor(containerView.trailingAnchor),
//            button.topAnchor.constraintEqualToAnchor(containerView.topAnchor),
//            button.bottomAnchor.constraintEqualToAnchor(containerView.bottomAnchor),
//
//            containerView.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor),
//            containerView.centerYAnchor.constraintEqualToAnchor(view.centerYAnchor),
//            containerView.leadingAnchor.constraintEqualToAnchor(view.leadingAnchor),
//            containerView.trailingAnchor.constraintEqualToAnchor(view.trailingAnchor)
//            ])

        // 3

//        guard let label = label else {
//            fatalError("It's expected that the view has loaded before updateViewConstraints() is called.")
//        }
//
//        // TODO: comment me out after #3
//        NSLayoutConstraint.activateConstraints([
//            button.leadingAnchor.constraintEqualToAnchor(containerView.leadingAnchor),
//            button.trailingAnchor.constraintEqualToAnchor(containerView.trailingAnchor),
//            button.bottomAnchor.constraintEqualToAnchor(containerView.bottomAnchor),
//
//            button.topAnchor.constraintEqualToAnchor(label.bottomAnchor),
//            button.heightAnchor.constraintEqualToAnchor(label.heightAnchor),
//
//            label.topAnchor.constraintEqualToAnchor(containerView.topAnchor),
//            label.leadingAnchor.constraintEqualToAnchor(containerView.leadingAnchor),
//            label.trailingAnchor.constraintEqualToAnchor(containerView.trailingAnchor),
//            label.centerXAnchor.constraintEqualToAnchor(containerView.centerXAnchor),
//
//            containerView.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor),
//            containerView.centerYAnchor.constraintEqualToAnchor(view.centerYAnchor),
//            containerView.leadingAnchor.constraintEqualToAnchor(view.leadingAnchor),
//            containerView.trailingAnchor.constraintEqualToAnchor(view.trailingAnchor)
//            ])

        // 4

//        NSLayoutConstraint.activateConstraints([
//            button.leadingAnchor.constraintEqualToAnchor(containerView.leadingAnchor),
//            button.trailingAnchor.constraintEqualToAnchor(containerView.trailingAnchor),
//            button.bottomAnchor.constraintEqualToAnchor(containerView.bottomAnchor),
//
//            button.topAnchor.constraintEqualToAnchor(label.bottomAnchor),
//            button.heightAnchor.constraintEqualToAnchor(label.heightAnchor),
//
//            label.topAnchor.constraintEqualToAnchor(containerView.topAnchor),
//            label.leadingAnchor.constraintEqualToAnchor(containerView.leadingAnchor),
//            label.trailingAnchor.constraintEqualToAnchor(containerView.trailingAnchor),
//
//            containerView.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor),
//            containerView.centerYAnchor.constraintEqualToAnchor(view.centerYAnchor)
//            ])
//
//        switch traitCollection.horizontalSizeClass {
//        case .Regular:
//            NSLayoutConstraint.activateConstraints([
//                containerView.widthAnchor.constraintEqualToAnchor(view.widthAnchor, multiplier: 0.5, constant: 0)
//                ])
//
//        case .Compact, .Unspecified:
//            NSLayoutConstraint.activateConstraints([
//                containerView.leadingAnchor.constraintEqualToAnchor(view.leadingAnchor),
//                containerView.trailingAnchor.constraintEqualToAnchor(view.trailingAnchor)
//                ])
//
//        }
    }
}

