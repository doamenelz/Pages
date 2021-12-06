//
//  Buttons.swift
//  YellowPages
//
//  Created by Edem Ekeng on 2021-12-06.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        CTARegular(label: "Normal CTA", type: .primary)
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}


struct CTARegular : View {
    
    var label : String
    var type : CTATypes
    
    var body: some View {
        
        Text(label)
            .modifier(BoldFont(font: .label))
            .foregroundColor(type == .primary ? .cWhite : .black2)
            .padding()
            .frame(maxWidth: .infinity)
            .background(type == .primary ? Color.primary1 : Color.cWhite)
            .cornerRadius(Dimensions.Outlets.buttonCornerRadius)
        
    }
}


enum CTATypes {
    case primary
    case secondary
}
