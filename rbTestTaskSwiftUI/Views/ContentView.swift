//
//  ContentView.swift
//  rbTestTaskSwiftUI
//
//  Created by Флоранс on 25.01.2024.
//

import SwiftUI

struct ContentView: View {
    private let rates = [1.94, 2.17, 1.26]
    private let values: [Double] = [16, 11, 11]
    private var betsCount: Int {
        return Int(values.reduce(0, +))
    }
    
    var body: some View {
        VStack {
            AverageDiagram(rates: rates).padding()
                .overlay(Rectangle().stroke(lineWidth: 2.0))
            .padding()
            
            BetCell(betsCount: betsCount, values: values).padding()
                .overlay(Rectangle().stroke(lineWidth: 2.0))
            .padding()
            .frame(height: 314)
            
            Spacer()
        }
        
    }
}

#Preview {
    ContentView()
}
