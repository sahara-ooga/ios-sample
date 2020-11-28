//
//  combine_handleEvent_sampleTests.swift
//  combine-handleEvent-sampleTests
//
//  Created by ogasawara on 2020/11/28.
//

import XCTest
import Combine
@testable import combine_handleEvent_sample

class combine_handleEvent_sampleTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let integers = (0...2)
        let _ = integers.publisher
            .handleEvents(
                receiveSubscription: { subs in
                print("Subscription: \(subs.combineIdentifier)")
            }, receiveOutput: { anInt in
                print("in output handler, received \(anInt)")
            }, receiveCompletion: { _ in
                print("in completion handler")
            }, receiveCancel: {
                print("received cancel")
            }, receiveRequest: { demand in
                print("received demand: \(demand.description)")
            })
            .sink { _ in return }

        // Prints:
        //   received demand: unlimited
        //   Subscription: 0x7f81284734c0
        //   in output handler, received 0
        //   in output handler, received 1
        //   in output handler, received 2
        //   in completion handler
    }

}
