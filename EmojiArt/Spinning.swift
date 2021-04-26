//
//  Spinning.swift
//  EmojiArt
//
//  Created by parashar.r.adhikary on 26/04/2021.
//

import SwiftUI

struct Spinning: ViewModifier {
    @State var isVisible = false
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(Angle(degrees: isVisible ? 360: 0))
            .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
            .onAppear { self.isVisible = true}
    }
}

extension View {
    func spinning() -> some View {
        self.modifier(Spinning())
    }
}
