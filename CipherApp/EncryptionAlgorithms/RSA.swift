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
    
    // Euclid's extended algorithm for finding the multiplicative inverse of two numbers.
    // In other words, we are looking for d such that d * e mod phi = 1
    private func findMultiplicativeInverse(for e: Int, and phi: Int) -> Int {
        let phiInitial = phi
        
        // values ​​from formula
        var e = e
        var phi = phi
        var y = 1
        var d = 0
        var i = -1
        
        var integerParts: [Int] = []
        
        while e % phi != 0 {
            i += 1
            integerParts.append(e / phi)
            
            let remainder = e % phi
            e = phi
            phi = remainder
        }
        
        for i in (0...i).reversed() {
            (d, y) = (y, d - y * integerParts[i])
        }
        
        if d < 0 {
            d += phiInitial
        }
        
        return d
    }
    
    // Euclid's algorithm for determining the greatest common divisor.
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
