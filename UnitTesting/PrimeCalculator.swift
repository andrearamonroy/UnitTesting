//
//  PrimeCalculator.swift
//  UnitTesting
//
//  Created by Andrea Monroy on 2/25/23.
//

import Foundation

struct PrimeCalculator {
    static func calculate(upTo max: Int) -> [Int] {
         guard max > 1 else {
            return []
   }

            
            // mark all our numbers as prime
            //Repeating: reserves enough space to store the specified number of elements.
            /// If you are adding a known number of elements to an array, use this method
            /// to avoid multiple reallocations.
            var sieve = [Bool](repeating: true, count: max)
            
            // 0 and 1 are by definition not prime
                    sieve[0] = false
                    sieve[1] = false

            // count from 0 up to the ceiling...
            for number in 1 ..< max {
                // if this is marked as prime, then every multiple of it is not prime
                if sieve[number] == true {
                    //stride: Returns a sequence from a starting value to, but not including, an end value, stepping by the specified amount.
                    for multiple in stride(from: number * number, to: sieve.count, by: number) {
                        sieve[multiple] = false
                    }
                }
            }
            
            
            // collapse our results down to a single array of primes
            let primes = sieve.enumerated().compactMap {$1 ==
                true ? $0 : nil  }
          return primes
        }
        
    }

