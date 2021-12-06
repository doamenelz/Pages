//
//  BackgroundView.swift
//  YellowPages
//
//  Created by Edem Ekeng on 2021-12-05.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Color.backgroundColor
            .edgesIgnoringSafeArea(.all)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
