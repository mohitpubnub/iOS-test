//
//  testTests.swift
//  testTests
//
//  Created by Mohit Tejani on 24/06/21.
//

import XCTest
import PubNub
@testable import test

class testTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExamplePubNub() throws {
     var config = PubNubConfiguration(publishKey: "pub_key", subscribeKey: "sub_key")
     var pubnub = PubNub(configuration: config)
     pubnub.time { result in
            switch result {
            case let .success(timetoken):
                    XCTAssertNotNil(timetoken)
            case let .failure(error):
                print("error: \(error.localizedDescription)")
            }
        }
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
