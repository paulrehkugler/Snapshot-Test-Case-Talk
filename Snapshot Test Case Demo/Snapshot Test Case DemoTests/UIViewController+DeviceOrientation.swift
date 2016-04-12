//
//  UIViewController+DeviceOrientation.swift
//  Snapshot Test Case Demo
//
//  Created by Paul Rehkugler on 4/9/16.
//  Copyright © 2016 Binary Tapes. All rights reserved.
//

import UIKit

extension UIViewController {
    func setup(
        viewControllerForTesting viewController: UIViewController,
        inDeviceOrientation deviceOrientation: DeviceOrientation)
    {
        let overrideTraitCollection = UITraitCollection(traitsFromCollections: [
            UITraitCollection(horizontalSizeClass: deviceOrientation.horizontalSizeClass),
            UITraitCollection(verticalSizeClass: deviceOrientation.verticalSizeClass)
            ])

        addChildViewController(viewController)
        view.addSubview(viewController.view)
        viewController.didMoveToParentViewController(self)

        var newViewControllerFrame = viewController.view.frame
        newViewControllerFrame.size = deviceOrientation.screenSize
        viewController.view.frame = newViewControllerFrame

        setOverrideTraitCollection(overrideTraitCollection, forChildViewController: viewController)
    }
}
