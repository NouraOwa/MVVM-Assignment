//
//  JobsView.swift
//  MVVMAssignment
//
//  Created by Noura Alowayid on 04/11/1444 AH.
//

import SwiftUI

struct JobsView: View {
    @StateObject private var vm = JobsViewModel()
    var body: some View {
        VStack(alignment: .leading){
            Text("What is your Major?")
            TextField("Enter your major:", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            VStack(alignment: .center){
                Text("To find the best Job for you")
                
                Button("Press here"){
                    vm.findJob()
                }
                List(vm.allJobs){ job in
                    Text(job.jobTitle)
                }
            }.padding()
        }.padding()
    }
}

struct JobsView_Previews: PreviewProvider {
    static var previews: some View {
        JobsView()
    }
}
