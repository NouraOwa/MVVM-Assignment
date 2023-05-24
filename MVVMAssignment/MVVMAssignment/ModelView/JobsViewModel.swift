//
//  JobsViewModel.swift
//  MVVMAssignment
//
//  Created by Noura Alowayid on 04/11/1444 AH.
//

import Foundation
import SwiftUI

extension JobsView {
    class JobsViewModel: ObservableObject{
        @Published var allJobs: [Jobs] = []
        func findJob(){
            let allJobs1 = [
                "Software Engineer",
                "Data Scientist",
                "Machine Learning Engineer",
                "Cybersecurity Engineer",
                "DevOps Engineer"
            ]
            let job = allJobs1.randomElement()!
            let newJob = Jobs(jobTitle: job, jobSalary: "salary")
            withAnimation{
                allJobs.insert(newJob, at:0 )
            }
        }
    }
}
