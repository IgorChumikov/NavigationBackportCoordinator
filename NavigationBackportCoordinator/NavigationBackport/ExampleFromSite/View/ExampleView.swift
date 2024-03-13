//
//  ExampleView.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 29.02.2024.
//

// https://github.com/johnpatrickmorgan/NavigationBackport

import NavigationBackport
import SwiftUI

struct ExampleView: View {
    
    @State var path = NBNavigationPath()
    
    var body: some View {
        NBNavigationStack(path: $path) {
            HomeView()
                .nbNavigationDestination(for: NumberList.self, destination: { numberList in
                    NumberListView(numberList: numberList)
                })
                .nbNavigationDestination(for: Int.self, destination: { number in
                    NumberView(number: number)
                })
                .nbNavigationDestination(for: EmojiVisualisation.self, destination: { visualisation in
                    EmojiView(visualisation: visualisation)
                })
        }
    }
}

#Preview {
    ExampleView()
}
