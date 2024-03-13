//
//  EmojiView.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 29.02.2024.
//

import SwiftUI

struct EmojiView: View {
    let visualisation: EmojiVisualisation
    
    var body: some View {
        Text(visualisation.text)
            .navigationTitle("Visualise \(visualisation.count)")
    }
}

#Preview {
    EmojiView(
        visualisation: EmojiVisualisation(emoji: "🐑", count: 1)
    )
}
