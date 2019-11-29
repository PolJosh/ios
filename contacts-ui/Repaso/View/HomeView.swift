//
//  HomeView.swift
//  Repaso
//
//  Created by Carlos López Hurtado on 11/24/19.
//  Copyright © 2019 Carlos López Hurtado. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var contactViewModel : ContactViewModel
    
    var body: some View {
        
        TabView{
            
            ContactView(contactViewModel: contactViewModel).tabItem(){
                Image(systemName: "person")
            }
            SavedView().tabItem(){
                Image(systemName:"arrow.left")
                
            }
        }
        
    }
}


