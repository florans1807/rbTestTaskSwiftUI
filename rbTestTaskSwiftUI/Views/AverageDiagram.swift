//
//  AverageDiagram.swift
//  rbTestTaskSwiftUI
//
//  Created by Флоранс on 25.01.2024.
//

import SwiftUI

struct AverageDiagram: View {
    let rates: [Double]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            
            Text("Средние коэффиценты")
                    .font(.system(size: 28))
                    .bold()
            
            HStack {
                
                VStack(spacing: 35) {
                    DiagramView(color: .green)
                    DiagramView(color: .red)
                    DiagramView(color: .gray)
                }
                
                VStack(spacing: 20) {
                    ResultView(result: "Выигрыш", rate: rates[0])
                    ResultView(result: "Проигрыш", rate: rates[1])
                    ResultView(result: "Возврат", rate: rates[2])
                }
            }
            
        }
    }
}

#Preview {
    AverageDiagram(rates: [1.94, 2.17, 1.26])
}

struct ResultView: View {
    let result: String
    let rate: Double
    
    var body: some View {
        HStack {
            Text(result)
                .foregroundColor(.gray)
                .font(.system(size: 20))
        
            Spacer()
            
            Text(rate.formatted())
                .font(.system(size: 20))
                .bold()
        }
    }
}
