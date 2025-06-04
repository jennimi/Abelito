import SwiftUI
import Foundation

extension Font {
    static func customFont(size: CGFloat) -> Font {
        return .custom("njnaruto", size: size)
    }
}

struct JourneyView: View {
    @ObservedObject var viewModel: ProfileViewModel
    @Binding var selectedCharacterIndex: Int?

    var body: some View {
        ZStack {
            let character = viewModel.characters[selectedCharacterIndex ?? 0]
            
            // Background
            Image(character.skin.background)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .offset(y: -120)
                .blur(radius: 3)
                .ignoresSafeArea()
            
            HStack(alignment: .top) {
                Spacer().frame(width: 80)

                // Character Image
                VStack {
                    CharacterImageView(viewModel: viewModel, selectedCharacterIndex: Binding(
                        get: { selectedCharacterIndex ?? 0 },
                        set: { selectedCharacterIndex = $0 }
                    ))
                }
                
                // Scrollable Text Area
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 20) {
                        // Title
                        HStack(spacing: 0) {
                            ForEach(Array(character.era.title.enumerated()), id: \.offset) { index, letter in
                                Text(String(letter))
                                    .font(.custom("Ninja Naruto", size: 30))
                                    .overlay(
                                        LinearGradient(
                                            colors: [character.highlight1, character.highlight2],
                                            startPoint: .leading,
                                            endPoint: .trailing
                                        )
                                    )
                                    .mask(
                                        Text(String(letter))
                                            .font(.custom("Ninja Naruto", size: 30))
                                    )
                            }
                        }
                        .padding(.top, 5)
                        .padding(.leading, 40)

                        // Backstory
                        Text(character.era.backstory)
                            .font(.custom("FOT-Reggae Std B", size: 14))
                            .frame(width: 450)
                            .foregroundColor(.white.opacity(0.9))
                            .padding(.leading, 20)

                        // Core Memories
                        VStack(alignment: .leading, spacing: 12) {
                            Text("🧠 Core Memories")
                                .font(.custom("FOT-Reggae Std B", size: 20))
                                .foregroundColor(character.accentColor)

                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 16) {
                                    ForEach(character.era.coreMemories, id: \.title) { memory in
                                        VStack(alignment: .leading, spacing: 8) {
                                            HStack {
                                                Text(memory.emoji)
                                                    .font(.system(size: 28))
                                                Text(memory.title)
                                                    .font(.custom("FOT-Reggae Std B", size: 14))
                                            }
                                            Text(memory.description)
                                                .font(.custom("FOT-Reggae Std B", size: 10))
                                        }
                                        .padding()
                                        .frame(width: 300, height: 130)
                                        .background(
                                            RoundedRectangle(cornerRadius: 16)
                                                .fill(.white.opacity(0.9))
                                        )
                                    }
                                    .foregroundColor(.black)
                                }
                                .padding(.horizontal, 4)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            .frame(maxWidth: .infinity)
                        }

                        Spacer()
                            .frame(height: 100)
                    }
                    .padding(.leading, 100)
                    .padding(.trailing, 24)
                    .padding(.vertical, 24)
                }
                .background(
                    SlantedRectangle()
                        .fill(.black.opacity(0.6))
                        .ignoresSafeArea()
                )
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .padding()
        }
        .ignoresSafeArea()
    }
}

struct SlantedRectangle: Shape {
    func path(in rect: CGRect) -> Path {
        let slant: CGFloat = 80
        var path = Path()
        path.move(to: CGPoint(x: rect.minX + slant, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.closeSubpath()
        return path
    }
}

#Preview {
    JourneyView(viewModel: ProfileViewModel(), selectedCharacterIndex: .constant(0))
}
