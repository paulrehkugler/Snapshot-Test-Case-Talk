//
//  ViewControllerSnapshotTests.swift
//  Snapshot Test Case Demo
//
//  Created by Paul Rehkugler on 4/9/16.
//  Copyright © 2016 Binary Tapes. All rights reserved.
//

import FBSnapshotTestCase
import XCTest

final class ViewControllerSnapshotTests: FBSnapshotTestCase {

    var viewController = UIViewController()

    override func setUp() {
        super.setUp()

        recordMode = true
    }

    func testViewControllerAppearance() {

        DeviceOrientation.allDeviceOrientations().forEach { deviceOrientation in
            viewController = UIViewController()
            viewController.view.frame = UIScreen.mainScreen().bounds

            let testingViewController = ViewController()
            viewController.setup(viewControllerForTesting: testingViewController, inDeviceOrientation: deviceOrientation)
            FBSnapshotVerifyView(testingViewController.view, identifier: deviceOrientation.name)
        }
    }
}
