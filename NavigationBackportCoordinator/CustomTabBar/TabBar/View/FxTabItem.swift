//
//  FxTabItem.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 15.03.2024.
//

import SwiftUI

struct FxTabItem: View {
    let width, height: CGFloat
    let systemIconName, tabName: String
    
    @ObservedObject var tabbarRouter: TabBarRouter
    let assignedPage: Page2
    
    var body: some View {
        VStack {
            Image(systemName: systemIconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .padding(.top, 10)
            Text(tabName)
                .font(.footnote)
            Spacer()
        }
        .padding(.horizontal, -4)
        .foregroundColor(tabbarRouter.currentPage == assignedPage ? Color("TabBarHighlight") : .gray)
        .onTapGesture {
            tabbarRouter.currentPage = assignedPage
        }
    }
}
