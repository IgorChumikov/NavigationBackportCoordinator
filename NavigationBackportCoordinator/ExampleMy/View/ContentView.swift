//
//  ContentView.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 29.02.2024.
//

import NavigationBackport
import SwiftUI

struct ContentView: View {
    @State var path = NBNavigationPath()
    
    var body: some View {
        NBNavigationStack(path: $path) {
            List {
                NBNavigationLink("Push SwiftUI🍌", value: Page.banana)
            }
            .nbNavigationDestination(for: Page.self) { destination in
                switch destination {
                case .banana:
                    BananaView()
                case .carrot:
                    CarrotView()
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
