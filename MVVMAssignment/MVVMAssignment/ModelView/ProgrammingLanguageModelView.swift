//
//  ProgrammingLanguageModelView.swift
//  MVVMAssignment
//
//  Created by Noura Alowayid on 04/11/1444 AH.
//

import Foundation
import SwiftUI

extension ProgrammingLanguageView {
     class ProgrammingLanguageViewModel: ObservableObject{
        @Published var allProgrammingLanguage: [ProgrammingLanguage] = []
        func findPL(){
            let allProgrammingLanguage1 = [
                "Swift",
                "Python",
                "JavaScript",
                "Java",
                "C++"
            ]
            let programmingLanguage = allProgrammingLanguage1.randomElement()!
            let newPL = ProgrammingLanguage(programmingLanguageName: programmingLanguage)
            
            withAnimation{
                allProgrammingLanguage.insert(newPL, at:0 )
            }
        }
    }
}

