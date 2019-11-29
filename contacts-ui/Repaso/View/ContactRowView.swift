//
//  ContactRowView.swift
//  Repaso
//
//  Created by Carlos López Hurtado on 11/25/19.
//  Copyright © 2019 Carlos López Hurtado. All rights reserved.
//

import SwiftUI

struct ContactRowView: View {
    
    @ObservedObject var contactViewModel : ContactViewModel
    
    @State var id : Int
    
    var contact: Contacts?
    
    var body: some View {
        
        VStack{
            Text(contact!.name!)
            Button(action:{
                //Elimina pero se cae
                self.contactViewModel.delete(position: self.id)
            }){
                Image(systemName: "trash")
            }
        }
        
    }
}

