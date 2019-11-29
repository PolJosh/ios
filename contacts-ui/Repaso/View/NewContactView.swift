//
//  NewContactView.swift
//  Repaso
//
//  Created by Carlos López Hurtado on 11/24/19.
//  Copyright © 2019 Carlos López Hurtado. All rights reserved.
//

import SwiftUI

struct NewContactView: View {
    @ObservedObject var contactViewModel : ContactViewModel
    
    @State var name: String
    
    @Binding var showRegister : Bool
    
    var body: some View {
       
        VStack{
            TextField("Nombre",text: $name)
            Button(action: {
                self.contactViewModel.addContact(name: self.name)
                self.contactViewModel.getAllContact()
                self.showRegister.toggle()
                
            }){
                Text("Agregar")
            }
        }
    }
}

