# Rapid View Prototyping Using FBSnapshotTestCase

## Paul Rehkugler
### https://pr.tumblr.com
### @paulrehkugler

^ Paul Rehkugler. Senior iOS Developer at Tumblr. Core Team (Jasdev & Kenny, frameworks, continuous integration, etc)

---

# Rapid View Prototyping

- See the results of UI changes in near-real time during development.
- See results of UI changes across all devices.

^ WYSIWIG editors like Interface Builder's Assistant Editor pane.
^ FBSnapshotTestCase is not really built to be a rapid view prototyping tool, but you can use it as one.

---

# FBSnapshotTestCase

- Library that allows you to unit test the appearance of views.
- You provide a directory path, and tell it to test a view.
- It generates snapshots and diffs the snapshots. If there is no difference, the test passes.

---

# Setting up FBSnapshotTestCase

- Add as a test dependency via CocoaPods.
- Instead of subclassing `XCTestCase`, subclass `FBSnapshotTestCase`.
- Run with `recordMode = true` to generate snapshots.
- Run with `recordMode = false` to compare against snapshots.

^ This is how I set up the demo. Your mileage may vary.
^ Now that you have some background as to the scope, we're going to talk about

---

# Rapidly Prototyping Views Using FBSnapshotTestCase

---

# Goals for Rapid Prototyping

- Get nearly immediate feedback during development.
- Test across all devices.

---

# Nearly Immediate feedback

- Run the tests often during development.
- Keep them in `recordMode` throughout development.

---

# Test Across All devices

- `DeviceOrientation` helper class.

```swift
struct DeviceOrientation {
    let horizontalSizeClass: UIUserInterfaceSizeClass
    let verticalSizeClass: UIUserInterfaceSizeClass
    let screenSize: CGSize
    let name: String
}
```

^ encapsulates all differences that will affect layout across all devices

---

# `DeviceOrientation` continued

```swift
static func iPhone4Portrait() -> DeviceOrientation {
		return DeviceOrientation(
				horizontalSizeClass: .Compact,
				verticalSizeClass: .Regular,
				screenSize: CGSize(width: 320, height: 480),
				name: "iPhone4Portrait")
}

static func allDeviceOrientations() -> [DeviceOrientation] { ... }
```

---

# Using DeviceOrientation

- `UIViewController` extension can set up `UIViewController` containment
- `setOverrideTraitCollection(collection:, forChildViewController:)`
- set `frame` of the `childViewController` to the `deviceOrientation`'s `screenSize`.

```swift
extension UIViewController {
    func setup(viewControllerForTesting viewController: UIViewController, inDeviceOrientation deviceOrientation: DeviceOrientation) { ... }
```

---

# Example Test

```swift
var viewController = UIViewController()

func testViewControllerAppearance() {
	DeviceOrientation.allDeviceOrientations().forEach { deviceOrientation in
		// parent view controller for containment
		viewController = UIViewController()
		viewController.view.frame = UIScreen.mainScreen().bounds

		// child view controller
		let testingViewController = ViewController()

		// set up for testing
		viewController.setup(viewControllerForTesting: testingViewController, inDeviceOrientation: deviceOrientation)

		// take snapshot
		FBSnapshotVerifyView(testingViewController.view, identifier: deviceOrientation.name)
	}
}
```

---

# Demo

---

# Writing Testable `UIViewController`s

- Use dependency injection for sources of data, instead of firing off network requests from within your view controllers.
- Separate layout from logic by making a custom `UIView` subclass and rapidly iterating on that instead.

---

# Why?

- At the end of this, you have working unit tests
- Works with and without Interface Builder, so you can appease people that like to write layout in code

---

# Questions?