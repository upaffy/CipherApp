//
//  AsciiFile.swift
//  
//
//  Created by Никита Гуляев on 15.09.2021.
//


//Метод для шифрования
let encryptedValue = "Swift"
var encryption = ""

for cipher in encryptedValue {
    encryption.append(Character(UnicodeScalar((cipher.asciiValue ?? 0 ) + 3)))

}
print(encryption)

//Метод для расшифровки
let decryptionValue = "Vzliw"
var decryption = ""

for decrypt in decryptionValue {
    decryption.append(Character(UnicodeScalar((decrypt.asciiValue ?? 0 ) - 3)))

}
print(decryption)


//Метод для шифрования
//let encryptedValue2: [Character] = ["X", "Y", "Z"]
//var encryption2 = ""
//
//for encryption2 in encryptedValue2 {
//    print(encryption2.asciiValue ?? 0)
//}
//
////Метод для расшифровки
//
//let decryptionValue2 = ["88", "89", "90"]
//var decryption2 = ""
//
//for decryption2 in decryptionValue2 {
//    print(decryption2.asciiValue ?? 0)
//}
