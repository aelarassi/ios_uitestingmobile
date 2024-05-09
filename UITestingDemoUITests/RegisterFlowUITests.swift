//
//  RegisterFlowUITests.swift
//  RegisterFlowUITests
//
//  Created by ABDELAZiZ EL ARASSi on 9/5/2024.
//

import XCTest

final class RegisterFlowUITests: XCTestCase {
    
    private var app: XCUIApplication!
    private var firstName: XCUIElement!
    private var lastName: XCUIElement!
    private var email: XCUIElement!
    private var password: XCUIElement!
    private var repeatPassword: XCUIElement!
    private var sendButton: XCUIElement!

    override func setUpWithError() throws {
        try super.setUpWithError()

        app = XCUIApplication()
        app.launch()
        
        firstName       = app.textFields["firstNameTextField"]
        lastName        = app.textFields["lastNameTextField"]
        email           = app.textFields["emailTextField"]
        password        = app.secureTextFields["passwordTextField"]
        repeatPassword  = app.secureTextFields["repeatPasswordTextField"]
        sendButton      = app.buttons["sendButton"]
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

    }

    override func tearDownWithError() throws {
        app = nil
        firstName = nil
        lastName = nil
        email = nil
        password = nil
        repeatPassword = nil
        sendButton = nil
        
        try super.tearDownWithError()
    }

    func testSignupFlowUITests_WhenViewLoaded_RequiredUIElementsAreEnabled() throws {
        // isEnabled
        XCTAssertTrue(firstName.isEnabled)
        XCTAssertTrue(lastName.isEnabled)
        XCTAssertTrue(email.isEnabled)
        XCTAssertTrue(password.isEnabled)
        XCTAssertTrue(repeatPassword.isEnabled)
        XCTAssertTrue(sendButton.isEnabled)
    }
    
    func testSignupFlowUITests_WhenInvalidFormSubmitted_PresentsErrorAlertDialog() {
        
//        firstName.tap() // comment this lign to show alert
//        firstName.typeText("abdel") // comment this lign to show alert
        
        lastName.tap()
        lastName.typeText("aziz")
        
        email.tap()
        email.typeText("abdel@aziz.com")
        
        password.tap()
        password.typeText("hola")
        
        repeatPassword.tap()
        repeatPassword.typeText("hola2")
        
        sendButton.tap()
        
        XCTAssertTrue(app.alerts["errorAlertDialog"].waitForExistence(timeout: 1), "the alert deont presented")
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
