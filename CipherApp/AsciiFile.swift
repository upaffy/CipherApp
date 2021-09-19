//
//  AsciiFile.swift
//  
//
//  Created by Никита Гуляев on 15.09.2021.
//
import Foundation

        
//Метод для шифрования

class Ascii {
    
    
    func encryption(_ encryptedValue: String, _ encryption: String ) -> String {
        
        let encryptedValue = "Swift"
        var encryption = ""
        
        for cipher in encryptedValue {
            let asciiValue = ((cipher.asciiValue ?? 0 ) + 3) % 127
            encryption.append(Character(UnicodeScalar(asciiValue)))
            print(encryption)
        }
        return encryption
    }
    
    //Метод для расшифровки
    
    
    func decrypt(_ decryptionValue: String, decrypt: String) -> String {
        
        let decryptionValue = "Vzliw"
        var decryption = ""
        
        for decrypt in decryptionValue {
            decryption.append(Character(UnicodeScalar((decrypt.asciiValue ?? 0 ) - 3)))
            print(decryption)
        }
        return decryption
    }
}
