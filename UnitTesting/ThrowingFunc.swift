//
//  ThrowingFunc.swift
//  UnitTesting
//
//  Created by Andrea Monroy on 2/22/23.
//

import Foundation

/*
 A specialized error that provides localized messages describing the error and why it occurred.
*/
extension LocalizedError {
    var errorDescription: String? {
        return "\(self)"
    }
}

enum GameError: LocalizedError {
   case notPurchased
   case notInstalled
   case parentalControlsDisallowed
}
struct Game {
    let name: String
    
    func play() throws {
        if name == "BioBlitz" {
            throw GameError.notPurchased
        } else if name == "Blastazap" {
            throw GameError.notInstalled
        } else if name == "Dead Storm Rising" {
            throw GameError.parentalControlsDisallowed
        } else {
            print("\(name) is OK to play!")
        } }
}
