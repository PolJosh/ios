//
//  ContactView.swift
//  Repaso
//
//  Created by Carlos López Hurtado on 11/24/19.
//  Copyright © 2019 Carlos López Hurtado. All rights reserved.
//

import SwiftUI

struct ContactView: View {
    
    @ObservedObject var contactViewModel : ContactViewModel
    @State var showRegister = false
    
    var body: some View {
        Button(action:{
            
            self.showRegister.toggle()
        }){
            Text("Add contact").foregroundColor(.blue)
        }.sheet(isPresented: $showRegister, content: {
            NewContactView(contactViewModel: self.contactViewModel,name: "",showRegister: self.$showRegister)
            
        })
    }
}
