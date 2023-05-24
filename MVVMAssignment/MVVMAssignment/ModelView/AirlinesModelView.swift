//
//  AirlinesModelView.swift
//  MVVMAssignment
//
//  Created by Noura Alowayid on 04/11/1444 AH.
//

import Foundation
import SwiftUI

extension AirlinesView{
    class AirlinesViewModel: ObservableObject{
        @Published var count = 0
        @Published var allAirlines: [Airlines] = []
        
        func increment(){
            count += 1
        }
            func findAirlines(){
                let allAirlines1 = [
                    "Saudi Arabian Airlines (Saudia)",
                    "Flynas",
                    "flyadeal",
                    "Sky Prime Aviation",
                    "Saudi Cargo",
                    "Saudi Gulf Airlines",
                    "Mid East Jet",
                    "Al Anwa Aviation",
                    "Dallah AVCO",
                    "Kayala Airline",
                    "Al Wafeer Air",
                    "SAMA Airline",
                    "SNAS Airlines"
                ]
                let airline = allAirlines1.randomElement()!
                let newItem = Airlines(airlinesName: airline, airlineNum: "the selected Airline is number \(allAirlines.count+1)")
                withAnimation{
                    allAirlines.insert(newItem, at:0 )
            }
        }
    }
}
