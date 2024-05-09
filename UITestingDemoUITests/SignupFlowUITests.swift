//
//  UITestingDemoUITests.swift
//  UITestingDemoUITests
//
//  Created by ABDELAZiZ EL ARASSi on 9/5/2024.
//

import XCTest

final class SignupFlowUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSignupFlowUITests_WhenViewLoaded_RequiredUIElementsAreEnabled() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let firstName       = app.textFields["firstNameTextField"]
        let lastName        = app.textFields["lastNameTextField"]
        let email           = app.textFields["emailTextField"]
        let password        = app.secureTextFields["passwordTextField"]
        let repeatPassword  = app.secureTextFields["repeatPasswordTextField"]
        let sendButton      = app.buttons["sendButton"]
        
        // isEnabled
        XCTAssertTrue(firstName.isEnabled)
        XCTAssertTrue(lastName.isEnabled)
        XCTAssertTrue(email.isEnabled)
        XCTAssertTrue(password.isEnabled)
        XCTAssertTrue(repeatPassword.isEnabled)
        XCTAssertTrue(sendButton.isEnabled)
        
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
