//
//  ContactInfoRowView.swift
//  ContactList_SwiftUI
//
//  Created by Terechshenkov Andrey on 09.04.2021.
//

import SwiftUI

struct ContactInfoRowView: View {
    let imageSystemName: String
    let text: String
    
    var body: some View {
        HStack {
            Image(systemName: imageSystemName)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Text(text)
            Spacer()
        }
        .font(.title3)
    }
}

struct ContactInfoRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoRowView(imageSystemName: "phone", text: "+777828289933")
    }
}
