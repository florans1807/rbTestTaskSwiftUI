//
//  BetCell.swift
//  rbTestTaskSwiftUI
//
//  Created by Флоранс on 25.01.2024.
//

import SwiftUI

struct BetCell: View {
    let betsCount: Int
    let values: [Double]
    var percentage: [Double] {
        return values.map { $0 / Double(betsCount) }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Выигрыши/проигрыши по букмекерам")
                .font(.system(size: 28))
                .bold()
            
            HStack {
                Image("Bet365").resizable().frame(width: 130, height: 90)
                
                Text("\(betsCount.getCorrectWordEnding())")
                    .font(.system(size: 28))
                    .bold()
                    .padding(.bottom, -17)
            }
            
            GeometryReader { geometry in
                HStack {
                    PercentageView(color: .green, value: values[0], percentage: percentage[0], width: geometry.size.width * percentage[0] - 3)
                    
                    PercentageView(color: .red, value: values[1], percentage: percentage[1], width: geometry.size.width * percentage[1] - 3)
                    
                    PercentageView(color: .gray, value: values[2], percentage: values[2]/Double(betsCount), width: geometry.size.width * percentage[2] - 3)
                }
            }
        }
    }
}

#Preview {
    BetCell(betsCount: 38, values: [16, 11, 11])
}
