//
//  Configuration.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 8/3/22.
//

import Foundation


public struct Configuration {
    private static let baseUrl = "database.deta.sh"
    
    public let projectKey: String
    public let projectId: String
    public let baseUrl: String
    public let pathPrefix: String
    
    public init(projectKey: String) {
        self.projectKey = projectKey
        self.projectId = String(projectKey.split(separator: "_")[0])
        self.baseUrl = Self.baseUrl
        self.pathPrefix = "/v1/\(projectId)"
    }
}
