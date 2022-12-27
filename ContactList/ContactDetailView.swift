//
//  ContactDetailView.swift
//  ContactList
//
//  Created by Иса on 27.12.2022.
//

import SwiftUI

struct ContactDetailView: View {
    let person: Person
    
    var body: some View {
        List {
            HStack(alignment: .center) {
                Spacer()
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 200, height: 200)
            }
            .frame(width: 250, height: 250)
            
            HStack {
                Image(systemName: "phone")
                    .foregroundColor(.blue)
                Text(person.phone)
            }
            
            HStack {
                Image(systemName: "mail")
                    .foregroundColor(.blue)
                Text(person.email)
            }
        }
        .navigationTitle(person.lastname)
    }
}

struct ContactDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailView(person: Person.getPersonList().first!)
    }
}
