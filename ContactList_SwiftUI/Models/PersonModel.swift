//
//  Persoin.swift
//  ContactList_SwiftUI
//
//  Created by Terechshenkov Andrey on 09.04.2021.
//

import Foundation

struct Person: Identifiable {
    let id = UUID()
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        firstName + " " + lastName
    }
}
