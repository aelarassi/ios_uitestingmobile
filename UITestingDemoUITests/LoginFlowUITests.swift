//
//  LoginFlowUITests.swift
//  UITestingDemoUITests
//
//  Created by ABDELAZiZ EL ARASSi on 9/5/2024.
//

import XCTest

final class LoginFlowUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
    }

    func testSignupFlowUITests_WhenTapped_PresentsRegisterViewController() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["CreateAccountButton"].tap()
        
        XCTAssertTrue(app.otherElements["RegisterViewController"].waitForExistence(timeout: 1), "RegisterViewController not exist")
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