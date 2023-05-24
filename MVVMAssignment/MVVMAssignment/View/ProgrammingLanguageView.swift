//
//  ProgrammingLanguageView.swift
//  MVVMAssignment
//
//  Created by Noura Alowayid on 04/11/1444 AH.
//

import SwiftUI

struct ProgrammingLanguageView: View {
    @StateObject private var vm = ProgrammingLanguageViewModel()
    @AppStorage("programming") var pl: String = "swift"
    @State var selectedPL = ""
    @State var readPL = ""
    var body: some View {
        VStack(alignment: .leading){
            Text("What do you want to develop?")
            TextField("Enter the type", text: $selectedPL)
            VStack(alignment: .center){
                Text("To find the best Programming Language for you")
                
                Button("Press here"){
                    vm.findPL()
                }
                List(vm.allProgrammingLanguage){ programmingLanguage in
                    Text(programmingLanguage.programmingLanguageName)
                }
                Button("Save"){
                    pl = selectedPL
             }
            Button("Read"){
                readPL = pl
            }
            Text("You selected: \(readPL)")
            }.padding()
        }.padding()
    }
}
struct ProgrammingLanguageView_Previews: PreviewProvider {
    static var previews: some View {
        ProgrammingLanguageView()
    }
}
