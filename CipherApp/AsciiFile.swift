//
//  AsciiFile.swift
//  
//
//  Created by Никита Гуляев on 15.09.2021.
//
import Foundation

        
//Метод для шифрования

class Ascii {
    
    var keyFoAsciiTable = 10
    
    func encryption(_ encryptedValue: String) -> String {
        
        let encryptedValue = "Swift"
        var encryption = ""
        
        for cipher in encryptedValue {
            let asciiCode = (Int((cipher.asciiValue ?? 0 )) + keyFoAsciiTable) % 127
            encryption.append(Character(UnicodeScalar(asciiCode)!))
        }
        return encryption
    }
    
    //Метод для расшифровки
    
    
    func decrypt(_ decryptionValue: String) -> String {
        
        let decryptionValue = "Vzliw"
        var decryption = ""
        
        for decrypt in decryptionValue {
            decryption.append(Character(UnicodeScalar((decrypt.asciiValue ?? 0 ) - UInt8(keyFoAsciiTable))))
        }
        return decryption
    }
}
