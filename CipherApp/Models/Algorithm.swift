//
//  Algorithm.swift
//  CipherApp
//
//  Created by Pavlentiy on 18.09.2021.
//

struct Algorithm {
    let name: algorithmName
    let algorithmClass: Any
    
    static func getAlgorithms() -> [Algorithm] {
        [Algorithm(name: .rsa, algorithmClass: ""),
         Algorithm(name: .atbash, algorithmClass: ""),
         Algorithm(name: .caesar, algorithmClass: "")]
    }
    
    enum algorithmName: String {
        case rsa = "RSA"
        case atbash = "Atbash"
        case caesar = "Caesar"
    }
}
