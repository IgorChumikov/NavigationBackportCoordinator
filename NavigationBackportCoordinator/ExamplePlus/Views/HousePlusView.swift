//
//  HousePlusView.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 05.03.2024.
//

import SwiftUI
import NavigationBackport

struct HousePlusView: View {
    
    // MARK: - Properties
    
    @EnvironmentObject var navigator: PathNavigator
    
    var body: some View {
        
        VStack(spacing: 40) {
            VStack(alignment: .leading, spacing: 10) {
                Button("Ссылка на список Новостей") {
                    // FOX
                }
                Button("Ссылка на новость") {
                    navigator.push(NewsPage.news)
                }
                Button("Ссылка на новость") {
                    navigator.push(NewsPage.news)
                }
                Text("Ссылка на новость")
            }
            .padding(.top, 40)
            VStack(alignment: .leading, spacing: 10) {
                Text("Ссылка на список Кодексы")
                Text("Ссылка на Кодекс")
                Text("Ссылка на Кодекс")
                Text("Ссылка на Кодекс")
            }
            VStack(alignment: .leading,spacing: 10) {
                Text("Ссылка на список Обзоры")
                Text("Ссылка на Обзор")
                Text("Ссылка на Обзор")
                Text("Ссылка на Обзор")
                
            }
            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.yellow)
    }
    
}

#Preview {
    HousePlusView()
}
