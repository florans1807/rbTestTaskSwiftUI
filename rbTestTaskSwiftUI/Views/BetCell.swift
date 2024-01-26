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
        var arrayOfPercents: [Double] = []
        for value in values {
            arrayOfPercents.append(value/Double(betsCount))
        }
        return arrayOfPercents
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
                    PercentageView(color: .green, value: values[0], percentage: percentage[0], width: geometry.size.width * percentage[0] - 3)//String(format: "%.0f", (values[0]/Double(betsCount))*100) + "%")
                    
                    PercentageView(color: .red, value: values[1], percentage: percentage[1], width: geometry.size.width * percentage[1] - 3)//String(format: "%.0f", (values[1]/Double(betsCount))*100) + "%")
                    
                    PercentageView(color: .gray, value: values[2], percentage: values[2]/Double(betsCount), width: geometry.size.width * percentage[2] - 3)//String(format: "%.0f", (values[2]/Double(betsCount))*100) + "%")
                }
            }
        }
    }
}

#Preview {
    BetCell(betsCount: 38, values: [16, 11, 11])
}
