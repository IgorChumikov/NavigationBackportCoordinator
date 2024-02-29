//
//  EmojiVisualisation.swift
//  NavigationBackportCoordinator
//
//  Created by Игорь Чумиков on 29.02.2024.
//

import Foundation

struct EmojiVisualisation: Hashable {
    let emoji: String
    let count: Int
    
    var text: String {
        Array(repeating: emoji, count: count).joined()
    }
}
