//
//  ContactViewModel.swift
//  Repaso
//
//  Created by Carlos López Hurtado on 11/24/19.
//  Copyright © 2019 Carlos López Hurtado. All rights reserved.
//

import SwiftUI

class ContactViewModel: ObservableObject{
    
    @Published var contacts = [Contacts]()
    
    
    func saveContext(){
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
    }
    
    func addContact(name : String){
        let contact = Contacts(context: context)
        contact.name=name
        //contacts.append(contact)
        saveContext()
        
        
    }
    
    func getAllContact(){
        do{
            self.contacts = try context.fetch(Contacts.fetchRequest())
        }catch(let error){
            print(error)
        }
    }
    
    func delete(position: Int){
           let contact = contacts[position]
           context.delete(contact)
           saveContext()
       }
    
    init(){
        getAllContact()
    }
    
    
}
