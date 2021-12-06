//
//  SearchLandingScreen.swift
//  YellowPages
//
//  Created by Edem Ekeng on 2021-12-05.
//

import SwiftUI

struct SearchLandingScreen: View {
    
    @StateObject var viewModel = SearchLandingViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()
                
                VStack {
                    Spacer()
                    Image(CustomImages.searchBaseLanding.rawValue)
                        .resizable()
                        .frame(height: 195)
                        
                }
                .edgesIgnoringSafeArea(.bottom)
                
                ScrollView  {
                    VStack (spacing: 20) {
                        SearchBar(searchText: $viewModel.searchText, placeholderText: "Search Hospitals, Clinics...")
                        HealthProviderQS(header: HPQS.primary.name, bodyCopy: HPQS.primary.body, icon: .primaryCare)
                        HealthProviderQS(header: HPQS.specialists.name, bodyCopy: HPQS.specialists.body, icon: .specialists)
                        HealthProviderQS(header: HPQS.dispensaries.name, bodyCopy: HPQS.dispensaries.body, icon: .dispensaries)
                        HealthProviderQS(header: HPQS.paramedical.name, bodyCopy: HPQS.paramedical.body, icon: .paramedical)
                    }
                    .padding()
                    
                    Spacer()
                    
                    
                    
                }
                .edgesIgnoringSafeArea(.bottom)
                
                
                if viewModel.filterSelected {
                    
                    VStack (spacing: 0) {
                        Color.backgroundColor
                            .frame(height: Dimensions.screenHeight / 2)
                        Color.black2
                    }
                    .edgesIgnoringSafeArea(.bottom)
                    
                }
               
                
            }
            .navigationTitle(Text("Search"))
            
            .toolbar(content: {
                Image(systemName: SystemIcons.filter.rawValue)
                    .foregroundColor(viewModel.filterSelected ? .primary1 : .gray3)
                    .onTapGesture {
                        viewModel.filterSelected.toggle()
                    }
            })
        }
    }
}

struct SearchLandingScreen_Previews: PreviewProvider {
    static var previews: some View {
        SearchLandingScreen()
    }
}


fileprivate struct HPQS {
    
    static let primary = HealthProviderQSStruct(name: "Primary Care Centers", body: "Hospitals, Clinics, Medical Centers, Mental Health and more")
    
    static let specialists = HealthProviderQSStruct(name: "Specialists", body: "Dental Clinics, Optometry, Paediatrics and more")
    
    static let dispensaries = HealthProviderQSStruct(name: "Dispenaries", body: "Pharmacies, Health Stores and more")
    
    static let paramedical = HealthProviderQSStruct(name: "Paramedical & Ancillary Services", body: "Physiotherapy, Ambulatory, X-Ray, MRI and more")
}

