//
//  ContentView.swift
//  ContactList
//
//  Created by Иса on 27.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    private let persons = Person.getPersonList()
    
    var body: some View {
        TabView {
            ContactsView(persons: persons)
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Contacts")
                }
            NumbersView(persons: persons)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
