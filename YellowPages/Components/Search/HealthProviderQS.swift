//
//  HealthProviderQS.swift
//  YellowPages
//
//  Created by Edem Ekeng on 2021-12-05.
//

import SwiftUI

struct HealthProviderQS: View {
    
    var header : String
    var bodyCopy : String
    var icon : HealthProviderClassificationIcon
    
    var body: some View {
        HStack (spacing: 20){
            VStack (alignment: .leading, spacing: 10){
                Text(header)
                    .modifier(BoldFont(font: .label))
                    .foregroundColor(.black2)
                Text(bodyCopy)
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(Dimensions.lineSpacing)
                    .modifier(RegularFont(font: .label))
                    .foregroundColor(.gray3)
            }
            Spacer()
            ZStack {
                Image(icon.rawValue)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .frame(width: 50, height: 50)
        }
        .padding(.all, 15)
        .background(Color.cWhite)
       .cornerRadius(Dimensions.Outlets.cardCornerRadius)
    }
}

struct HealthProviderQS_Previews: PreviewProvider {
    static var previews: some View {
        HealthProviderQS(header: "Header Sample", bodyCopy: "Body Sample", icon: .dispensaries).preferredColorScheme(.dark)
    }
}
