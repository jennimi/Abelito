//
//  Skill.swift
//  Abelito
//
//  Created by Karyna Budi Sanjaya on 09/05/25.
//

import Foundation

struct Skill: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let stats: [Stat]
}
