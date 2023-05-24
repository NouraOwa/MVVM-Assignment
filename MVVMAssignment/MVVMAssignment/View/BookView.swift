//
//  BookView.swift
//  MVVMAssignment
//
//  Created by Noura Alowayid on 04/11/1444 AH.
//

import SwiftUI

struct BookView: View {
    @ObservedObject var vm = BookModelView()
    var body: some View {
        VStack(alignment: .leading) {
                ForEach(vm.allBook){ book in
                    Text("\(book.title)").font(.title2).bold()
                    Text("\(book.author)").font(.title3)
                    Text("\(book.price)")

                }
            }
            
        }
    }
struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView()
    }
}
