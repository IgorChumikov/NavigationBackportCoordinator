//
//  SecondView.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 13.03.2024.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack {
            Color.black
            Image("second")
                .resizable()
                .aspectRatio(contentMode: .fit)
            VStack {
             //   MainNavigationBar()
                Spacer()
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 30, weight: .heavy, design: .rounded))
                    .foregroundColor(.white)
                Spacer()
            }
            .padding()
        }
        .navigationBarHidden(true)
        .ignoresSafeArea(.container, edges: .vertical)
    }
}

#Preview {
    SecondView()
}
