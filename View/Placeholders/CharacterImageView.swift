//
//  CharacterImageView.swift
//  Abelito
//
//  Created by Karyna Budi Sanjaya on 19/05/25.
//

import SwiftUI

struct CharacterImageView: View {
    
    @ObservedObject var viewModel: ProfileViewModel
    @Binding var selectedCharacterIndex: Int
    
    @State private var rotateGlow = false

    var body: some View {
        VStack {
            let character = viewModel.characters[selectedCharacterIndex]

            Spacer().frame(height: 50)
            ZStack {
                            // Glowing rotating background
//                            Circle()
//                                .stroke(
//                                    LinearGradient(colors: [character.highlight1, character.highlight2],
//                                                   startPoint: .topLeading,
//                                                   endPoint: .bottomTrailing),
//                                    lineWidth: 40
//                                )
//                                .frame(width: 150, height: 150)
//                                .blur(radius: 25)
//                                .rotationEffect(.degrees(rotateGlow ? 360 : 0))
//                                .animation(.linear(duration: 5).repeatForever(autoreverses: false), value: rotateGlow)
//                                .onAppear {
//                                    rotateGlow = true
//                                }

                            // Character Image
                            Image(character.skin.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 350)
                        }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    CharacterImageView(viewModel: ProfileViewModel(), selectedCharacterIndex: .constant(0))
}
