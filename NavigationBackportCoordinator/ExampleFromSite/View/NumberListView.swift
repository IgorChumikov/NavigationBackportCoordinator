//
//  NumberListView.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 29.02.2024.
//

import SwiftUI
import NavigationBackport

struct NumberListView: View {
    
    let numberList: NumberList
    
    var body: some View {
        List {
            ForEach(numberList.range, id: \.self) { number in
                NBNavigationLink("\(number)", value: number)
            }
        }.navigationTitle("List")
    }
}

#Preview {
    NumberListView(
        numberList: NumberList(range: Range<Int>(0...10))
    )
}
