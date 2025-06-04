//
//  ContentView.swift
//  Abelito
//
//  Created by Karyna Budi Sanjaya on 07/05/25.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        ZStack() {
            ProfileView()
//            SplashView()
        }
    }
}

#Preview {
    ContentView()
}
