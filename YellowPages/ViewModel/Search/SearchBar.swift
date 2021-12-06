//
//  SearchBar.swift
//  YellowPages
//
//  Created by Edem Ekeng on 2021-12-05.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var searchText : String
    var placeholderText : String
    
    var body: some View {
        
        HStack {
            
            if searchText == "" {
                Image(systemName: SystemIcons.search.rawValue)
                    .resizable()
                    .frame(width: 12, height: 12)
                    .foregroundColor(.gray3)
            }
            
                
            TextField("Placeholder", text: $searchText)
                .foregroundColor(.black2)
                .modifier(MediumFont(font: .label))
            Spacer()
            
            if searchText != "" {
                Image(systemName: SystemIcons.xMark.rawValue)
                    .foregroundColor(.gray3)
                    .onTapGesture {
                        withAnimation {
                            searchText = ""
                        }
                        
                    }
            }
            
            
        }.padding(.horizontal, 10)
            .padding(.vertical, 12)
            .background(Color.gray4)
            .cornerRadius(10)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(searchText: .constant("Search values"), placeholderText: "Search for Hospitals, doctors...")
    }
}
