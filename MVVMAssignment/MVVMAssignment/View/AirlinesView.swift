//
//  AirlinesView.swift
//  MVVMAssignment
//
//  Created by Noura Alowayid on 04/11/1444 AH.
//

import SwiftUI

struct AirlinesView: View {
    @StateObject private var vm = AirlinesViewModel()
    @AppStorage("airline") var airlinee: String = "saudia"
    @State var selectedAirline = ""
    @State var readAirline = ""
    var body: some View {
        VStack(alignment: .leading){
            Text("Where do you want to travel?")
            TextField("Enter the city:", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            VStack(alignment: .center){
                Text("To find the best Airline for you")
                
                Button("Press here"){
                    vm.findAirlines()
                }
                List(vm.allAirlines){ airline in
                    Text(airline.airlinesName)
                    Text(airline.airlineNum)
                }
                Button("Save"){
                    airlinee = selectedAirline
             }
            Button("Read"){
                readAirline = airlinee
            }
            Text("You selected: \(readAirline)")
            }.padding()
        }.padding()
    }
}

struct AirlinesView_Previews: PreviewProvider {
    static var previews: some View {
        AirlinesView()
    }
}
