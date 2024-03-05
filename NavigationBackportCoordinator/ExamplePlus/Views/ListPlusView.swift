//
//  ListPlusView.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 05.03.2024.
//

import SwiftUI

// MARK: - ListPlusView

struct ListPlusView: View {
    
    // MARK: - Content
    
    var body: some View {
        List {
            ForEach(0..<20) { index in
                Text("Item \(index + 1)")
            }
        }
        .listStyle(.inset)
        .navigationTitle("List")
    }
}

#Preview {
    NavigationView {
        ListPlusView()
    }
}
