//
//  JobsModel.swift
//  MVVMAssignment
//
//  Created by Noura Alowayid on 04/11/1444 AH.
//

import Foundation

struct Jobs: Identifiable{
    var id = UUID()
    var jobTitle: String
    var jobSalary: String
}
