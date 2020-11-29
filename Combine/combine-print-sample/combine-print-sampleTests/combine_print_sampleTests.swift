//
//  combine_print_sampleTests.swift
//  combine-print-sampleTests
//
//  Created by ogasawara on 2020/11/29.
//

import XCTest
import Combine

@testable import combine_print_sample

class combine_print_sampleTests: XCTestCase {
    var cancellable = AnyCancellable({})
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let integers = (1...3)
        cancellable = integers.publisher
           .print("Logged a message", to: nil)
           .sink { _ in }
        /**
         Logged a message: receive subscription: (1...3)
         Logged a message: request unlimited
         Logged a message: receive value: (1)
         Logged a message: receive value: (2)
         Logged a message: receive value: (3)
         Logged a message: receive finished
         */
    }

}
