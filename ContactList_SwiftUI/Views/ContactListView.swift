//
//  ContactListView.swift
//  ContactList_SwiftUI
//
//  Created by Terechshenkov Andrey on 09.04.2021.
//

import SwiftUI

struct ContactListView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                NavigationLink(
                    destination: ContactInfoView(contact: contact),
                    label: {
                        Text(contact.fullName)
                    })
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contacts: DataManager.getPersons())
    }
}
