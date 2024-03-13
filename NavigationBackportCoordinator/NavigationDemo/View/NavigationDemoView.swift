//
//  NavigationDemoView.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 13.03.2024.
//

// https://github.com/joliejuly/swiftui_ios14_navigation_demo

import SwiftUI

struct NavigationDemoView: View {
    var body: some View {
        MainNavigationView {
            ZStack {
                Image("home")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .opacity(0.7)
                Button {
                    isFirstViewShown = true
                } label: {
                    Text("Go!")
                        .font(.system(size: 50, weight: .heavy, design:  .rounded))
                        .foregroundColor(.white)
                }
            }
            .navigationLink(title: "FirstView", destination: FirstView(), isActive: $isFirstViewShown)
        }
        .onAppear {
            NavigationStorage.shared.addMainScreenPathItem()
        }
    }
    
    @State private var isFirstViewShown = false
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationDemoView()
    }
}

#Preview {
    NavigationDemoView()
}
