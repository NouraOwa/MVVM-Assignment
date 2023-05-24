//
//  CitiesModelView.swift
//  MVVMAssignment
//
//  Created by Noura Alowayid on 04/11/1444 AH.
//

import Foundation
import SwiftUI

extension CitiesView {
     class CitiesModelView: ObservableObject{
        @Published var allCities: [Cities] = []
        func findCity(){
            let allCities1 = [
                "Jeddah",
                "Abu Dhabi",
                "Dubai",
                "Manama",
                "Muscat",
                "Riyadh",
                "Doha",
                "Kuwait City",
              ]
            let city = allCities1.randomElement()!
            let newcity = Cities(cityName: city)
            
            withAnimation{
                allCities.insert(newcity, at:0 )
            }
        }
    }
}
