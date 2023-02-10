//
//  ConverterTests.swift
//  UnitTestingTests
//
//  Created by Andrea Monroy on 2/6/23.
//

import XCTest
@testable import UnitTesting

final class ConverterTests: XCTestCase {
    
    //adding a converter property 
    var sut : Converter!

    
    //creates
    //gets call before every test is run
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        //an instance of converter gets intanziated
        sut = Converter()
        
    }
    
    //destroys
    //gets called after every test is run
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        //an instance of converter gets destroyed
        sut = nil
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
    
    //converter
    
    func test32FahrenhetIsZeroCelsius(){
        
        //Given
        //system under test
        //let sut = Converter()
        
        let input1 = 32.0
        
        //When
        let output1 = sut.convertToCelsius(fahrenheit: input1)
        
        //Then assert
        XCTAssertEqual(output1, 0)
        
    
    }
    
    func test212FahrenheitIs100Celsius(){
        
        //given
        //let sut = Converter()
        let input2 = 212.0
        
        //when
        let output2 = sut.convertToCelsius(fahrenheit: input2)
        
        //then
        XCTAssertEqual(output2, 100)
        
        
    }
    
   

}
