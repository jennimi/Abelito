//
//  ProfileView.swift
//  Abelito
//
//  Created by Karyna Budi Sanjaya on 09/05/25.
//

import SwiftUI
import Foundation

enum Route: Hashable {
    case journey(Int)
}

struct ProfileView: View {
    @StateObject private var viewModel = ProfileViewModel()
    @State private var selectedCharacterIndex: Int? = 0
    @State private var selectedSkill: Skill? = nil
    @State private var showSkillDetail = false
    @State private var path = NavigationPath()
    
    var body: some View {
        let character = viewModel.characters[selectedCharacterIndex ?? 0]
        NavigationStack(path: $path) {
            ZStack {
                Image(character.skin.background)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: -120)
                    .blur(radius: 3)
                    .ignoresSafeArea()
                
                HStack {
                    // Left - Character Info
                    CharacterInfoView(
                        viewModel: viewModel,
                        selectedCharacterIndex: Binding(
                            get: { selectedCharacterIndex ?? 0 },
                            set: { selectedCharacterIndex = $0 }
                        ),                        selectedSkill: $selectedSkill,
                        showSkillDetail: $showSkillDetail,
                        path: $path
                    )
                    
                    // Center - Character Image
                    CharacterImageView(viewModel: viewModel, selectedCharacterIndex: Binding(
                        get: { selectedCharacterIndex ?? 0 },
                        set: { selectedCharacterIndex = $0 }
                    ))
                    
                    // Right - Character Picker
                    //                    CharacterPickerView(viewModel: viewModel, selectedCharacterIndex: $selectedCharacterIndex, selectedSkill: $selectedSkill, showSkillDetail: $showSkillDetail, path: $path)
                    
                    VStack() {
                        
                        ScrollView(.horizontal) {
                            HStack(spacing: -80) {
                                ForEach(viewModel.characters.indices, id: \.self) { index in
                                    VStack {
                                        // Image(viewModel.profile.skins[index].thumbnail)
                                        Image(viewModel.characters[index].skin.thumbnail)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 160, height: 200)
                                            .containerRelativeFrame(.horizontal, count: 1, spacing: 4)
                                            .scaleEffect(selectedCharacterIndex == index ? 1.0 : 0.8)
                                            .opacity(selectedCharacterIndex == index ? 1.0 : 0.4)
                                            .animation(.easeInOut(duration: 0.1), value: selectedCharacterIndex)
                                        Text(viewModel.characters[index].skin.name)
                                            .font(selectedCharacterIndex == index ?                         .custom("FOT-Reggae Std B", size: 16) :                         .custom("FOT-Reggae Std B", size: 12))
                                            .opacity(selectedCharacterIndex == index ? 1.0 : 0.4)
                                            .animation(.easeInOut(duration: 0.1), value: selectedCharacterIndex)
                                    }
                                    .id(index)
                                }
                            }
                            .scrollTargetLayout()
                        }
                        .scrollPosition(id: $selectedCharacterIndex)
                        .contentMargins(20, for: .scrollContent)
                        .scrollTargetBehavior(.viewAligned)
                        
                        Button(action: {
                            if let index = selectedCharacterIndex {
                                path.append(Route.journey(index))
                            }
                        }) {
                            ZStack {
                                OctagonShape()
                                    .fill(
                                        LinearGradient(
                                            colors: [character.highlight1, character.highlight2],
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing
                                        )
                                    )
                                    .shadow(color: .orange.opacity(0.6), radius: 10, x: 0, y: 5)
                                    .overlay(
                                        OctagonShape()
                                            .stroke(Color.white.opacity(0.9), lineWidth: 2)
                                    )
                                    .overlay(
                                        OctagonShape()
                                            .stroke(Color.white.opacity(0.2), lineWidth: 6)
                                            .blur(radius: 2)
                                    )

                                Text("GET TO KNOW")
                                    .font(.custom("Ninja Naruto", size: 20))
                                    .foregroundColor(.white)
                                    .shadow(color: .black.opacity(0.6), radius: 2, x: 1, y: 1)
                                    .padding(.horizontal, 24)
                                    .padding(.vertical, 12)
                            }
                            .frame(width: 200, height: 60)
                            .contentShape(OctagonShape())
                        }

                        
                        
                    }
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [.black.opacity(0.3), .accentColor.opacity(0.0)]),
                            startPoint: .trailing,
                            endPoint: .leading
                        )
                    )
                    Spacer()
                }
                .foregroundColor(.white)
                .ignoresSafeArea(edges: [.trailing, .bottom])
                .navigationDestination(for: Route.self) { route in
                    switch route {
                    case .journey(_):
                        JourneyView(viewModel: viewModel, selectedCharacterIndex: $selectedCharacterIndex)
                    }
                }
                
//                if showSkillDetail, let skill = selectedSkill {
//                    HStack {
//                        Spacer()
//                        VStack(alignment: .leading, spacing: 16) {
//                            Spacer()
//                            HStack {
//                                Text(skill.name)
//                                    .font(.title2)
//                                    .fontWeight(.bold)
//                                Spacer()
//                                Button(action: {
//                                    withAnimation { showSkillDetail = false }
//                                }) {
//                                    Image(systemName: "xmark.circle.fill")
//                                        .font(.title)
//                                        .foregroundColor(.white)
//                                }
//                            }
//                            
//                            Text(skill.description)
//                                .font(.body)
//                                .foregroundColor(.white)
//                            Spacer()
//                        }
//                        .padding()
//                        .frame(width: 300)
//                        .background(.ultraThinMaterial)
//                        .transition(.move(edge: .trailing))
//                    }
//                    .frame(maxWidth: .infinity)
//                    .background(Color.black.opacity(0.3)
//                        .ignoresSafeArea()
//                        .onTapGesture {
//                            withAnimation { showSkillDetail = false }
//                        })
//                }
                
                if showSkillDetail, let skill = selectedSkill {
                    ZStack {
                        Color.black.opacity(0.4)
                            .ignoresSafeArea()
                            .onTapGesture {
                                withAnimation { showSkillDetail = false }
                            }

                        VStack(alignment: .leading, spacing: 16) {
                            HStack(alignment: .top) {
                                // Skill icon
                                Image(skill.image)
                                    .resizable()
                                    .frame(width: 48, height: 48)
                                    .clipShape(Circle())

                                VStack(alignment: .leading, spacing: 4) {
                                    // Skill name with gradient
                                    Text(skill.name)
                                        .font(.custom("Ninja Naruto", size: 20))
                                        .overlay(
                                            LinearGradient(
                                                colors: [.orange, .red],
                                                startPoint: .leading,
                                                endPoint: .trailing
                                            )
                                        )
                                        .mask(
                                            Text(skill.name)
                                                .font(.custom("Ninja Naruto", size: 20))
                                        )

                                    Divider()
                                        .background(Color.white.opacity(0.5))
                                }

                                Spacer()

                                // Close button
                                Button(action: {
                                    withAnimation { showSkillDetail = false }
                                }) {
                                    Image(systemName: "xmark.circle.fill")
                                        .font(.title)
                                        .foregroundColor(.white)
                                }
                            }

                            // Description
                            Text(skill.description)
                                .font(.custom("FOT-Reggae Std B", size: 14))
                                .foregroundColor(.white.opacity(0.9))
                                .fixedSize(horizontal: false, vertical: true)

                            // Stats
                            VStack(alignment: .leading, spacing: 8) {
                                ForEach(skill.stats) { stat in
                                    HStack {
                                        Text(stat.label)
                                            .font(.custom("FOT-Reggae Std B", size: 12))
                                            .frame(width: 80, alignment: .leading)
                                            .foregroundColor(.white)

                                        StatBarSegmented(value: stat.value, color: .orange)
                                    }
                                }
                            }

                        }
                        .padding()
                        .frame(width: 320)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.ultraThinMaterial)
                                .shadow(radius: 10)
                        )
                        .transition(.move(edge: .trailing))
                    }
                }

            }
        }
    }
}


struct OctagonShape: Shape {
    func path(in rect: CGRect) -> Path {
        let inset: CGFloat = rect.width * 0.1
        var path = Path()

        path.move(to: CGPoint(x: rect.minX + inset, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX - inset, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY + inset))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - inset))
        path.addLine(to: CGPoint(x: rect.maxX - inset, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX + inset, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY - inset))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY + inset))
        path.closeSubpath()

        return path
    }
}


struct SkinIndexPreferenceKey: PreferenceKey {
    static var defaultValue: Int = 0
    static func reduce(value: inout Int, nextValue: () -> Int) {
        value = nextValue()
    }
}



#Preview {
    ContentView()
}
