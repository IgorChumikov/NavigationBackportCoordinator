//
//  HomeView.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 29.02.2024.
//

import SwiftUI
import NavigationBackport

struct HomeView: View {
    
    var body: some View {
        VStack(spacing: 8) {
            NBNavigationLink(
                value: NumberList(range: 0 ..< 100),
                label: {
                    Text("Pick a number")
                }
            )
        }.navigationTitle("Home")
    }

}

#Preview {
    HomeView()
}
