//
//  ContactsView.swift
//  ContactList
//
//  Created by Иса on 27.12.2022.
//

import SwiftUI

struct ContactsView: View {
    
    let persons: [Person]
    
    var body: some View {
        
        NavigationStack {
            List(persons) { person in
                NavigationLink(person.lastname) {
                    ContactDetailView(person: person)
                }
            }
            .navigationTitle("Contact List")
            .listStyle(.plain)
            
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(persons: Person.getPersonList())
    }
}
