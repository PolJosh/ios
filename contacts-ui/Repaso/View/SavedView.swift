//
//  SavedView.swift
//  Repaso
//
//  Created by Carlos López Hurtado on 11/24/19.
//  Copyright © 2019 Carlos López Hurtado. All rights reserved.
//

import SwiftUI

struct SavedView: View {
    
    @EnvironmentObject var contactViewModel : ContactViewModel
    
    
    var body: some View {
        
            List{
                ForEach(self.contactViewModel.contacts, id: \.self){
                    contact in
                    ContactRowView(contactViewModel: self.contactViewModel, id:self.contactViewModel.contacts.index(of: contact)!, contact: contact)
                }
            }
        
    }
}

