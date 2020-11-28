//
//  combine_breakpoint_sampleUITests.swift
//  combine-breakpoint-sampleUITests
//
//  Created by ogasawara on 2020/11/28.
//

import XCTest
import Combine

class combine_breakpoint_sampleUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let publisher = PassthroughSubject<String?, Never>()
        let _ = publisher
            .breakpoint(
                receiveOutput: { value in return value == "DEBUGGER" }
            )
            .sink { print("\(String(describing: $0))" , terminator: " ") }

        publisher.send("DEBUGGER")
        // Prints: "error: Execution was interrupted, reason: signal SIGTRAP."
        // Depending on your specific environment, the console messages may
        // also include stack trace information.
        // see also [breakpoint(receiveSubscription:receiveOutput:receiveCompletion:) | Apple Developer Documentation](https://developer.apple.com/documentation/combine/publisher/breakpoint(receivesubscription:receiveoutput:receivecompletion:))
    }

}
