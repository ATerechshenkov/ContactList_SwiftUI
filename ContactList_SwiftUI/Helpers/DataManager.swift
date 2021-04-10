//
//  PersonModel.swift
//  PersonsList
//
//  Created by Terechshenkov Andrey on 22.12.2020.
//

import Foundation

class DataManager {
    static let firstNames: Set<String> = ["Leionard", "Sheldon", "Penny", "Howard", "Raj", "Amy", "Bernadette"]
    static let lastNames: Set<String> = ["Hofstadter", "Cooper", "Wolowitz", "Koothrappali", "Farrah", "Fowler", "Rostenkowski"]
    static let postHosts: Set<String> = ["mail.ru", "icloud.com", "gmail.com", "yandex.ru", "godaddy.com"]
    static var persons = [Person]()
    
    static func getPersons() -> [Person] {
        if persons.isEmpty {
            persons = genRandomPersons()
        }
        return persons
    }
    
    static func getPerson() -> Person {
        return getPersons().first!
    }
    
    static private func genRandomPersons() -> [Person] {
        var firstNames = DataManager.firstNames
        var lastNames = DataManager.lastNames
        
        while !firstNames.isEmpty || !lastNames.isEmpty {
            let firstName = firstNames.popFirst()!
            let lastName = lastNames.popFirst()!
            persons.append(
                Person(
                    firstName: firstName,
                    lastName: lastName,
                    phoneNumber: "+" + String(Int.random(in: 1000000000...9999999999)),
                    email: lastName.lowercased() + "@" + postHosts.randomElement()!
                )
            )
        }
        
        return persons
    }
}
