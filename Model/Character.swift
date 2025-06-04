//
//  Character.swift
//  Abelito
//
//  Created by Karyna Budi Sanjaya on 19/05/25.
//

import Foundation
import SwiftUICore

struct Character {
    let skin: Skin
    let name: String
    let title: String
    let subtitle: String
    let level: Int
    let stats: [Stat]
    let skills: [Skill]
    let accentColor: Color
    let highlight1: Color
    let highlight2: Color
    let era: Era
}

struct Era: Identifiable {
    let id = UUID()
    let title: String
    let backstory: String
    let coreMemories: [CoreMemory]
}

struct CoreMemory: Identifiable {
    let id = UUID()
    let emoji: String
    let title: String
    let description: String
}
