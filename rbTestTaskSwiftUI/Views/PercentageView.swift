//
//  PercentageView.swift
//  rbTestTaskSwiftUI
//
//  Created by Флоранс on 26.01.2024.
//

import SwiftUI

struct PercentageView: View {
    let color: Color
    let value: Double
    let percentage: Double
    let width: CGFloat
    
    var body: some View {
        VStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 1.0)
                .fill(color)
                .frame(width: width, height: 10)
   
            Text(value.formatted() + " (" + String(format: "%.0f", percentage * 100) + "%)")
                .fontWeight(.semibold)
                .lineLimit(1)
        }
    }
}

#Preview {
    PercentageView(color: .green, value: 16, percentage: 0.5, width: 200)
}
