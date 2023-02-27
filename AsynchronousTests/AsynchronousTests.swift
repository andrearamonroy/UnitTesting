//
//  AsynchronousTests.swift
//  AsynchronousTests
//
//  Created by Andrea Monroy on 2/25/23.
//

import XCTest
@testable import UnitTesting

final class AsynchronousTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testPrimesUpTo100Should0(){
        
        //given
        let maxCount = 100
        let expectation = XCTestExpectation(description: "calculate primes up to \(maxCount)")
       
        //when
        PrimeCalculator.calculate(upTo: maxCount) {
             XCTAssertEqual($0.count, 0)
             expectation.fulfill()
       }
          wait(for: [expectation], timeout: 10)
    }

}
