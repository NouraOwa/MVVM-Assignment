//
//  BookModel.swift
//  MVVMAssignment
//
//  Created by Noura Alowayid on 04/11/1444 AH.
//

import Foundation

struct Book: Identifiable {
    var id = UUID()

    var title: String
    var author: String
    var price: Double
    var nPages: Int
    var readingAge: Int
}
