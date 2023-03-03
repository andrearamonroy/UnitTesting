//
//  NotificationsTests.swift
//  AsynchronousTests
//
//  Created by Andrea Monroy on 3/2/23.
//

import XCTest
@testable import UnitTesting

final class NotificationsTests: XCTestCase {

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
    
    
  

    func testUserUpgradedPostsNotification(){
        
        //given
        let user = User()
        let center = NotificationCenter()
        let expectation = XCTNSNotificationExpectation(name: User.upgradedNotification, object: nil, notificationCenter: center)
        
        //perfomrs custom evaluation of matching notifications
        expectation.handler = { notification -> Bool in
            guard let level = notification.userInfo?["level"] as? String
            else {
                return false
            }
            if level == "gold" {
                return true
            } else {
                return false
            }
        }
        
        //when
        user.update(using: center)
        
        //then
        wait(for: [expectation], timeout: 3)
    }


}
