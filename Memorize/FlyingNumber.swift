//
//  FlyingNumber.swift
//  Memorize
//
//  Created by Tar on 6/2/2567 BE.
//

import SwiftUI

struct FlyingNumber: View {
    let number: Int
    
    var body: some View {
        if number != 0 {
            Text(number, format: .number)
        }
    }
}

#Preview {
    FlyingNumber(number: 5)
}
