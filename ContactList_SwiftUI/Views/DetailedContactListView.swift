//
//  ContactListView.swift
//  ContactList_SwiftUI
//
//  Created by Terechshenkov Andrey on 09.04.2021.
//

import SwiftUI

struct DetailedContactListView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(contacts) { contact in
                    Section(header: Text(contact.fullName)) {
                        ContactInfoRowView(
                            imageSystemName: "phone",
                            text: contact.phoneNumber
                        )
                        ContactInfoRowView(
                            imageSystemName: "tray",
                            text: contact.email
                        )
                    }
                }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct DetailedContactListView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedContactListView(contacts: DataManager.getPersons())
    }
}
