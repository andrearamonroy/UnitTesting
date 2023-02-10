//
//  Converter.swift
//  UnitTesting
//
//  Created by Andrea Monroy on 2/6/23.
//

import Foundation

struct Converter {
   func convertToCelsius(fahrenheit: Double) -> Double {
       //UnitTemperature: a unit of measure for temperature
       let fahrenheit = Measurement(value: fahrenheit, unit: UnitTemperature.fahrenheit)
       let celsius = fahrenheit.converted(to: .celsius)
       return  celsius.value //.value: the value component of the measurement
   }
}
