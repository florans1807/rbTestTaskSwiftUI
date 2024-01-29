//
//  DiagramView.swift
//  rbTestTaskSwiftUI
//
//  Created by Флоранс on 25.01.2024.
//

import SwiftUI

struct DiagramView: View {
    let color: Color
    let widthRatio: Double
    @State var size: CGSize = .zero
    
    var body: some View {
        ZStack(alignment: .leading) {
            GeometryReader { geometry in
                RoundedRectangle(cornerRadius: 1.0)
                    .fill(.gray.opacity(0.3))
                    .onAppear {
                        size = geometry.size
                    }
            }
            RoundedRectangle(cornerRadius: 1.0)
                .fill(color)
                .frame(width: size.width * widthRatio)
        }.frame(height: 10)
    }
}

#Preview {
    DiagramView(color: .red, widthRatio: 0.75)
}
