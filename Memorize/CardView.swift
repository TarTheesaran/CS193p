//
//  CardView.swift
//  Memorize
//
//  Created by Tar on 14/1/2567 BE.
//

import SwiftUI

struct CardView: View {
    typealias Card = MemoryGame<String>.Card
    
    let card: Card
    
    init(_ card: Card) {
        self.card = card
    }
    
    private struct Constants {
        static let conerRadius: CGFloat = 12
        static let lineWidth: CGFloat = 2
        static let insent: CGFloat = 5
        struct FontSize {
            static let largest: CGFloat = 200
            static let smallest: CGFloat = 10
            static let scaleFactor = smallest / largest
        }
        struct Pie {
            static let opacity: CGFloat = 0.5
            static let inset: CGFloat = 5
        }
    }
    
    var body: some View {
        TimelineView(.animation(minimumInterval: 1/10)) { timeline in
            if card.isFaceUp || !card.isMatched {
                Pie(endAngle: .degrees(card.bonusPercentRemaining * 360))
                    .opacity(Constants.Pie.opacity)
                    .overlay(cardContents.padding(Constants.insent))
                    .cardify(isFaceUp: card.isFaceUp)
                    .opacity(card.isFaceUp || !card.isMatched ? 1 : 0)
                    .transition(.scale)
            } else {
                Color.clear
            }
        }
    }
    
    var cardContents: some View {
        Text(card.content)
            .font(.system(size: Constants.FontSize.largest))
            .minimumScaleFactor(Constants.FontSize.scaleFactor)
            .multilineTextAlignment(.center)
            .aspectRatio(1, contentMode: .fit)
            .padding(Constants.Pie.inset)
            .rotationEffect(.degrees(card.isMatched ? 360 : 0))
            .animation(.spin(duration: 1), value: card.isMatched)
    }
}

extension Animation {
    static func spin(duration: TimeInterval) -> Animation {
        .linear(duration: 1).repeatForever(autoreverses: false)
    }
}

struct CardView_Preview: PreviewProvider {
    typealias Card = MemoryGame<String>.Card
    
    static var previews: some View {
        VStack {
            HStack {
                CardView(Card(isFaceUp: true, content: "X", id: "test1"))
                    .aspectRatio(4/3, contentMode: .fit)
                CardView(Card(content: "X", id: "test1"))
            }
            HStack {
                CardView(Card(isFaceUp: true, isMatched: true, content: "This is very long string and I hope it fits", id: "test1"))
                CardView(Card(isMatched: true, content: "X", id: "test1"))
            }
        } .padding()
            .foregroundColor(.green)
    }
}
