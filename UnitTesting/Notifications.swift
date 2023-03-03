//
//  Notifications.swift
//  UnitTesting
//
//  Created by Andrea Monroy on 3/2/23.
//

import Foundation

struct User {
    
    //singleton?
    //static variable is shared between all instances of an object,
    static let upgradedNotification = Notification.Name("UserUpgraded")
    
    
    //using dependecy injection(there's the notificationCenter default value)
    func update(using center: NotificationCenter = NotificationCenter.default){
        DispatchQueue.global().async {
            Thread.sleep(forTimeInterval: 1) //after 1 sec sleep it pushes posts the User.upgradedNotification notification to the main notification center
            center.post(name: User.upgradedNotification, object: nil, userInfo: ["level" : "gold"])
        }
    }
}
