//
//  CharacterInfoView.swift
//  Abelito
//
//  Created by Karyna Budi Sanjaya on 19/05/25.
//

import SwiftUI

struct CharacterInfoView: View {
    
    @ObservedObject var viewModel: ProfileViewModel
    @Binding var selectedCharacterIndex: Int
    @Binding var selectedSkill: Skill?
    @Binding var showSkillDetail: Bool
    @Binding var path: NavigationPath

    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            let character = viewModel.characters[selectedCharacterIndex]

            HStack {
                Image(systemName: "bonjour")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .bold()
                    .foregroundColor(character.accentColor)
                
                ZStack {
                    // Text stroke (behind)
                    Text(character.name)
                        .font(.custom("Ninja Naruto", size: 24))
                        .foregroundColor(.black) // stroke color
                        .offset(x: 2, y: 2) // create outline offset
                        

                    HStack(spacing: 0) {
                        ForEach(Array(character.name.enumerated()), id: \.offset) { index, letter in
                            Text(String(letter))
                                .font(.custom("Ninja Naruto", size: 24))
                                .overlay(
                                    LinearGradient(
                                        colors: [character.highlight1, character.highlight2],
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                )
                                .mask(
                                    Text(String(letter))
                                        .font(.custom("Ninja Naruto", size: 24))
                                )
                        }
                    }
                }
            }

            Text(character.title)
                .font(.custom("FOT-Reggae Std B", size: 20))
            Text(character.subtitle)
                .font(.custom("FOT-Reggae Std B", size: 14))
                .italic()

            Text("Level : \(character.level)")
                .font(.custom("FOT-Reggae Std B", size: 18))

            ForEach(character.stats) { stat in
                Stats(label: stat.label, value: stat.value, color: viewModel.characters[selectedCharacterIndex].accentColor)
            }

            let topRow = character.skills.prefix(3)
            let bottomRow = character.skills.dropFirst(3)

            VStack(spacing: 8) {
                HStack(spacing: 16) {
                    ForEach(topRow, id: \..id) { skill in
                        Button(action: {
                            selectedSkill = skill
                            withAnimation { showSkillDetail = true }
                        }) {
                            Image(skill.image)
                                .resizable()
                                .frame(width: 44, height: 44)
                                .clipShape(Circle())
                                .help(skill.name)
                        }
                    }
                }

                HStack(spacing: 16) {
                    ForEach(bottomRow, id: \..id) { skill in
                        Button(action: {
                            selectedSkill = skill
                            withAnimation { showSkillDetail = true }
                        }) {
                            Image(skill.image)
                                .resizable()
                                .frame(width: 44, height: 44)
                                .clipShape(Circle())
                                .help(skill.name)
                        }
                    }
                }
            }
            .padding(.top, 12)
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [.black.opacity(0.5), .black.opacity(0.0)]),
                startPoint: .leading,
                endPoint: .trailing
            )
        )    }
}

struct Stats: View {
    var label: String
    var value: Double
    var color: Color = .blue
    
    var body: some View {
        HStack {
            Text(label)
                .font(.custom("FOT-Reggae Std B", size: 10))
                .frame(width: 70, alignment: .leading)
            
            StatBarSegmented(value: value, color: color)
        }
    }
}

struct StatBarSegmented: View {
    var value: Double // 0.0 to 1.0
    var segments: Int = 5
    var color: Color = .accentColor
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<segments, id: \.self) { index in
                GeometryReader { geo in
                    let skew: CGFloat = 1
                    
                    Canvas { context, size in
                        var path = Path()
                        
                        path.move(to: CGPoint(x: skew, y: 0))
                        path.addLine(to: CGPoint(x: size.width, y: 0))
                        path.addLine(to: CGPoint(x: size.width - skew, y: size.height))
                        path.addLine(to: CGPoint(x: 0, y: size.height))
                        path.closeSubpath()
                        
                        let segmentValue = Double(index + 1) / Double(segments)
                        let fill = segmentValue <= value ? color : color.opacity(0.2)
                        
                        context.fill(path, with: .color(fill))
                    }
                }
                .aspectRatio(2.0, contentMode: .fit) // tighter blocks
            }
        }
        .frame(height: 10) // smaller overall height
    }
}

#Preview {
    CharacterInfoView(viewModel: ProfileViewModel(), selectedCharacterIndex: .constant(0), selectedSkill: .constant(nil), showSkillDetail: .constant(false), path: .constant(NavigationPath()))
}
