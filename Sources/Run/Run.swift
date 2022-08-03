//
//  File.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 8/3/22.
//

import Foundation
import DetaKit


@main
public struct Main {
    static func main() {
        
        
        Deta.initialize(projectKey: "publics")
        
        print("Hola Deta")
        let user: User = User(key: "detaKey")
        print(user.key ?? "")
    }
}


struct User: Base {
    var key: String?
}
