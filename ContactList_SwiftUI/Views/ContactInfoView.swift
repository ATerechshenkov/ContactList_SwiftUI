//
//  ContactInfoView.swift
//  ContactList_SwiftUI
//
//  Created by Terechshenkov Andrey on 09.04.2021.
//

import SwiftUI

struct ContactInfoView: View {
    let contact: Person
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 150, height: 150)
            ContactInfoRowView(
                imageSystemName: "phone",
                text: contact.phoneNumber
            )
            ContactInfoRowView(
                imageSystemName: "tray",
                text: contact.email
            )
            Spacer()
        }
        .font(.headline)
        .padding()
        .navigationBarTitle(contact.fullName)
    }
}

struct ContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(contact: DataManager.getPerson())
    }
}
