//
//  BookModelView.swift
//  MVVMAssignment
//
//  Created by Noura Alowayid on 04/11/1444 AH.
//

import Foundation

extension BookView {
    class BookModelView: ObservableObject {
        @Published var count = 0
        @Published var allBook = [
            Book(title: "Think and Grow Rich", author: "Napoleon Hill", price: 34.15, nPages: 680, readingAge: 18),
            Book(title: "The 7 Habits of Highly \nEffective People", author: "Stephen R. Covey", price: 44.15, nPages: 120, readingAge: 18),
            Book(title: "Rich Dad Poor Dad", author: "Robert Kiyosaki", price: 24, nPages: 180, readingAge: 16),
            Book(title: "The Power of Positive Thinking", author: "Norman Vincent Peale", price: 74.15, nPages: 260, readingAge: 16),
            Book(title: "The Alchemist", author: "Paulo Coelho", price: 20, nPages: 280, readingAge: 18)
        ]
        func increment(){
            count += 1
        }
    }
}
