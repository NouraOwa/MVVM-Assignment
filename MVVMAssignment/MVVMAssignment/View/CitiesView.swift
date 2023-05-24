//
//  CitiesView.swift
//  MVVMAssignment
//
//  Created by Noura Alowayid on 04/11/1444 AH.
//

import SwiftUI

struct CitiesView: View {
    @StateObject private var vm = CitiesModelView()
    @AppStorage("month") var month: String = "Oct"
    @State var selectedMonth = ""
    @State var readMonth = ""

    var body: some View {
        VStack(alignment: .leading){
            Text("When do you want to travel?")
            TextField("Enter the month", text: $selectedMonth)
            VStack(alignment: .center){
                Text("To find the best city for you")
                    Button("Press here"){
                        vm.findCity()
                    }
                    List(vm.allCities){ city in
                        Text(city.cityName)
                    }
                    Button("Save"){
                        month = selectedMonth
                 }
                Button("Read"){
                    readMonth = month
                }
                Text("You selected: \(readMonth)")
            }.padding()
        }.padding()
    }
}
struct CitiesView_Previews: PreviewProvider {
    static var previews: some View {
        CitiesView()
    }
}
