//
//  NumberView.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 29.02.2024.
//

import SwiftUI
import NavigationBackport

struct NumberView: View {
    
    @EnvironmentObject var navigator: PathNavigator
    let number: Int
    
    var body: some View {
        VStack(spacing: 8) {
            Text("\(number)")
            NBNavigationLink(
                value: number + 1,
                label: { Text("Show next number") }
            )
            NBNavigationLink(
                value: EmojiVisualisation(emoji: "🐑", count: number),
                label: { Text("Visualise with sheep") }
            )
            Button("Go back to root", action: {
                navigator.popToRoot()
            })
        }.navigationTitle("\(number)")
    }
}

#Preview {
    NumberView(number: 1)
}
