//
//  ThrowingTests.swift
//  UnitTestingTests
//
//  Created by Andrea Monroy on 2/17/23.
//

import XCTest
@testable import UnitTesting


final class ThrowingTests: XCTestCase {
    
    func testPlayingBioBlitzThrows(){}

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
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    //method 1 for func that throws
    func testPlatingBioblitzThrows() {
        let game = Game(name: "BioBlitz")
        
        
        do {
            try game.play()
            XCTFail()
        } catch GameError.notPurchased{
          //success! don't use XCTFail
        } catch {
            XCTFail()
        }
        
    }
    
    
        //method 2
    
    //doesn't test the type of error thrown just asserts than in fact an error is thrown
    func testPlayingBlastazapThrows() {
       let game = Game(name: "Blastazap")
        //trailing closure
        XCTAssertThrowsError(try game.play()) { error in
            //typecast to GameError
            XCTAssertEqual(error as? GameError, GameError.notInstalled)
        }
    }
    
    //XCTAssertNoThrow can be used to test all other games run without throwing
    //other games run without throwing
    func testPlayingExplodingMonkeyDoesntThrow(){
        let game = Game(name: "exploding monkey")
        XCTAssertNoThrow(try game.play())
    }
    
    
    //method func that doesn't throw
    
    //writing a throwing test:
    //any func that runs without throwing passes this tests
    //if the func throws then this test should fail
    func testDeadStormRisingThrows() throws {
       let game = Game(name: "Dead Storm Rising")
       try game.play()
    }
    
    func testCrashyPlaneDoesntThrow() throws {
       let game = Game(name: "CrashyPlane")
       try game.play()
    }

}
