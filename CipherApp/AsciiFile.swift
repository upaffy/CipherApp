//
//  AsciiFile.swift
//  
//
//  Created by Никита Гуляев on 15.09.2021.
//
import Foundation

        
//Метод для шифрования

class Ascii {
    
    let asciiTableCount = 127
    var keyFoAsciiTable = 100
    
    func encryption() -> String {
        
        let encryptedValue = "Swift"
        var encryption = ""
        
        for cipher in encryptedValue {
            let asciiCode = (Int((cipher.asciiValue ?? 0 )) + keyFoAsciiTable) % asciiTableCount
            encryption.append(Character(UnicodeScalar(asciiCode) ?? " "))
        }
        return encryption
    }
    
    //Метод для расшифровки
    
    func decrypt() -> String {
        
        let decryptionValue = "Vzliw"
        var decryption = ""
        
        for decrypt in decryptionValue {
            let asciiCode = (Int((decrypt.asciiValue ?? 0 ) - UInt8(keyFoAsciiTable)) + asciiTableCount) % asciiTableCount
            decryption.append(Character(UnicodeScalar(asciiCode) ?? " "))
        }
        return decryption
    }
}
