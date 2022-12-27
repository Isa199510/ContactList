//
//  NumbersView.swift
//  ContactList
//
//  Created by Иса on 27.12.2022.
//

import SwiftUI

struct NumbersView: View {
    
    let persons: [Person]
    
    var body: some View {
        
        List(persons) { person in
            
            Section(header: Text(person.lastname)) {
                
                VStack(spacing: 15) {
                    HStack {
                        Image(systemName: "phone")
                            .foregroundStyle(.blue)
                        Text(person.phone)
                        Spacer()
                    }
                    
                    HStack {
                        Image(systemName: "mail")
                            .foregroundStyle(.blue)
                        Text(person.email)
                        Spacer()
                    }
                }
            }
            
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(persons: Person.getPersonList())
    }
}
