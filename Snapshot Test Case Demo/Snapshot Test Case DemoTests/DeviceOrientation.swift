//
//  DeviceOrientation.swift
//  Snapshot Test Case Demo
//
//  Created by Paul Rehkugler on 4/9/16.
//  Copyright © 2016 Binary Tapes. All rights reserved.
//

import Foundation
import UIKit

struct DeviceOrientation {
    let horizontalSizeClass: UIUserInterfaceSizeClass
    let verticalSizeClass: UIUserInterfaceSizeClass
    let screenSize: CGSize
    let name: String

    static func iPhone4Portrait() -> DeviceOrientation {
        return DeviceOrientation(horizontalSizeClass: .Compact, verticalSizeClass: .Regular, screenSize: CGSize(width: 320, height: 480), name: "iPhone4Portrait")
    }

    static func iPhone4Landscape() -> DeviceOrientation {
        return DeviceOrientation(horizontalSizeClass: .Compact, verticalSizeClass: .Compact, screenSize: CGSize(width: 480, height: 320), name: "iPhone4Landscape")
    }

    static func iPhone5Portrait() -> DeviceOrientation {
        return DeviceOrientation(horizontalSizeClass: .Compact, verticalSizeClass: .Regular, screenSize: CGSize(width: 320, height: 568), name: "iPhone5Portrait")
    }

    static func iPhone5Landscape() -> DeviceOrientation {
        return DeviceOrientation(horizontalSizeClass: .Compact, verticalSizeClass: .Compact, screenSize: CGSize(width: 568, height: 320), name: "iPhone5Landscape")
    }

    static func iPhone6Portrait() -> DeviceOrientation {
        return DeviceOrientation(horizontalSizeClass: .Compact, verticalSizeClass: .Regular, screenSize: CGSize(width: 375, height: 667), name: "iPhone6Portrait")
    }

    static func iPhone6Landscape() -> DeviceOrientation {
        return DeviceOrientation(horizontalSizeClass: .Compact, verticalSizeClass: .Compact, screenSize: CGSize(width: 667, height: 375), name: "iPhone6Landscape")
    }

    static func iPhone6PlusPortrait() -> DeviceOrientation {
        return DeviceOrientation(horizontalSizeClass: .Compact, verticalSizeClass: .Regular, screenSize: CGSize(width: 414, height: 736), name: "iPhone6PlusPortrait")
    }

    static func iPhone6PlusLandscape() -> DeviceOrientation {
        return DeviceOrientation(horizontalSizeClass: .Regular, verticalSizeClass: .Compact, screenSize: CGSize(width: 736, height: 414), name: "iPhone6PlusLandscape")
    }

    static func iPadPortrait() -> DeviceOrientation {
        return DeviceOrientation(horizontalSizeClass: .Regular, verticalSizeClass: .Regular, screenSize: CGSize(width: 768, height: 1024), name: "iPadPortrait")
    }

    static func iPadLandscape() -> DeviceOrientation {
        return DeviceOrientation(horizontalSizeClass: .Regular, verticalSizeClass: .Regular, screenSize: CGSize(width: 1024, height: 768), name: "iPadLandscape")
    }

    static func iPadProPortrait() -> DeviceOrientation {
        return DeviceOrientation(horizontalSizeClass: .Regular, verticalSizeClass: .Regular, screenSize: CGSize(width: 1024, height: 1366), name: "iPadProPortrait")
    }

    static func iPadProLandscape() -> DeviceOrientation {
        return DeviceOrientation(horizontalSizeClass: .Regular, verticalSizeClass: .Regular, screenSize: CGSize(width: 1366, height: 1024), name: "iPadProLandscape")
    }

    static func allDeviceOrientations() -> [DeviceOrientation] {
        return [
            .iPhone4Portrait(),
            .iPhone4Landscape(),
            .iPhone5Portrait(),
            .iPhone5Landscape(),
            .iPhone6Portrait(),
            .iPhone6Landscape(),
            .iPhone6PlusPortrait(),
            .iPhone6PlusLandscape(),
            .iPadPortrait(),
            .iPadLandscape(),
            .iPadProPortrait(),
            .iPadProLandscape()
        ]
    }
}
