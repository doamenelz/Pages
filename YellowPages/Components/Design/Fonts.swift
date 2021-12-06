//
//  Fonts.swift
//  YellowPages
//
//  Created by Edem Ekeng on 2021-12-05.
//

import Foundation
import SwiftUI

enum CustomFontClassifier {
    case body
    case subHeader
    case label
    case header
}

enum CustomFontSizes : CGFloat {
    case body = 16
    case label = 13
    case subHeader = 18
    case header = 24
}

struct CustomFont {
    let weight : Font.Weight
    let size : CustomFontSizes
    let design : Font.Design
    
}

struct RegularFont : ViewModifier {
    
    var font : CustomFontClassifier
    
    var cFont : CustomFont {
        get {
            switch font {
                case .body:
                    return CustomFont(weight: .regular, size: .body, design: .default)
                case .subHeader:
                    return CustomFont(weight: .regular, size: .subHeader, design: .default)
                case .label:
                    return CustomFont(weight: .regular, size: .label, design: .default)
                case .header:
                    return CustomFont(weight: .regular, size: .header, design: .default)
            }
        }
        
    }
    
    
    
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: cFont.size.rawValue, weight: cFont.weight, design: cFont.design))
    }
}

struct MediumFont : ViewModifier {
    
    var font : CustomFontClassifier
    
    var cFont : CustomFont {
        get {
            switch font {
                case .body:
                    return CustomFont(weight: .medium, size: .body, design: .default)
                case .subHeader:
                    return CustomFont(weight: .medium, size: .subHeader, design: .default)
                case .label:
                    return CustomFont(weight: .medium, size: .label, design: .default)
                case .header:
                    return CustomFont(weight: .medium, size: .header, design: .default)
            }
        }
        
    }
    
    
    
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: cFont.size.rawValue, weight: cFont.weight, design: cFont.design))
    }
}

struct BoldFont : ViewModifier {
    
    var font : CustomFontClassifier
    
    var cFont : CustomFont {
        get {
            switch font {
                case .body:
                    return CustomFont(weight: .bold, size: .body, design: .default)
                case .subHeader:
                    return CustomFont(weight: .bold, size: .subHeader, design: .default)
                case .label:
                    return CustomFont(weight: .bold, size: .label, design: .default)
                case .header:
                    return CustomFont(weight: .bold, size: .header, design: .default)
            }
        }
        
    }
    
    
    
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: cFont.size.rawValue, weight: cFont.weight, design: cFont.design))
    }
}

struct LightFont : ViewModifier {
    
    var font : CustomFontClassifier
    
    var cFont : CustomFont {
        get {
            switch font {
                case .body:
                    return CustomFont(weight: .light, size: .body, design: .default)
                case .subHeader:
                    return CustomFont(weight: .light, size: .subHeader, design: .default)
                case .label:
                    return CustomFont(weight: .light, size: .label, design: .default)
                case .header:
                    return CustomFont(weight: .light, size: .header, design: .default)
            }
        }
        
    }
    
    
    
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: cFont.size.rawValue, weight: cFont.weight, design: cFont.design))
    }
}
