
@_exported import DetaModels
@_exported import DetaNetwork
@_exported import DetaUtils

import Foundation

public struct DetaKit {
    public private(set) var text = "Hello, World!"

    public init() {
        
    }
}



public struct Deta {
    public internal(set) static var configuration: Configuration!
        public static var session: URLSession!
    //        public static var authentication: AuthenticationServiceProvider!
    //        public static var request: PetNetworkAPIClient!
    
    public static func initialize(projectKey: String) {
            Self.configuration = Configuration(projectKey: projectKey)
        }
     
        static func detaKey() -> String {
            return Self.configuration.projectKey
        }

}

