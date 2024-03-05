//
//  HousePlusView.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 05.03.2024.
//

import SwiftUI

struct HousePlusView: View {
    var body: some View {
    
        VStack(spacing: 40) {
            VStack(alignment: .leading, spacing: 10) {
                Text("Ссылка на список Новостей")
                Text("Ссылка на новость")
                Text("Ссылка на новость")
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
