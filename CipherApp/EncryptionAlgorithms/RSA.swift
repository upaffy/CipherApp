//
//  RSA.swift
//  CipherApp
//
//  Created by Pavlentiy on 13.09.2021.
//

class RSA {
    func encrypt(_ plainText: String, with privateKey: (Int, Int)) -> [Int] {
        [0]
    }
    
    func decrypt(_ cipherText: [Int], with publicKey: (Int, Int)) -> String {
        ""
    }
    
    func generateKeyPair(using firstPrimeNumber: Int, and secondPrimeNumber: Int) -> (publicKey: (Int, Int), privateKey: (Int, Int)) {
        ((0, 0), (0, 0))
    }
    
    private func multiplicativeInverse(for e: Int, and phi: Int) -> Int {
        0
    }
    
    private func findGreatestCommonDivisor(for x: Int, and y: Int) -> Int {
        
        if x == 0 || y == 0 {
            return max(x, y)
        } else {
            var x = x
            var y = y
            
            while x != y {
                if x > y {
                    x -= y
                } else {
                    y -= x
                }
            }
            
            return x
        }
    }
    
    private func isPrime(_ number: Int) -> Bool {
        
        if number % 2 == 0 {
            return number == 2
        } else {
            var divisor = 3
            
            while number % divisor != 0 && number > divisor {
                divisor += 2
            }
            
            return divisor == number
        }
    }
}
