//
//  UnitTestingTests.swift
//  UnitTestingTests
//
//  Created by Andrea Monroy on 2/6/23.
//

import XCTest

/* Test lifecycle
 
 In setUp
 Starting test
 In middle of test
 Finishing test
 In second tearDown block
 In first tearDown block
 In tearDown
 
 
 */


//firstTests Class
final class UnitTestingTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        print("In class setUp")
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        print("In class tearDown")
    }
    
    override func setUp() {
        print("In setUp")
    }
    
    override func tearDown() {
        print("In teardown")
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        print("starting test")
        
        addTeardownBlock {
            print("In first tearDown block")
        }
        
        print("middle of the test")
        
        addTeardownBlock {
            print("In second tearDown block")
        }
        print("Finishing test")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    


}
