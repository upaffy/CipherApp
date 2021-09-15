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
    
    func generateKeyPair(using x: Int, and y: Int) -> (publicKey: (Int, Int), privateKey: (Int, Int), CompletionStatus) {
        var completionStatus = CompletionStatus.ok
        var publicKey = (0, 0)
        var privateKey = (0, 0)
        
        if !isPrime(x) || !isPrime(y) {
            completionStatus = .error(title: "Ooops", body: "Both numbers must be prime")
            
            return (publicKey, privateKey, completionStatus)
        } else if x == y {
            completionStatus = .error(title: "Ooops", body: "Numbers cannot be equal")
            
            return (publicKey, privateKey, completionStatus)
        }
        
        let n = x * y
        let phi = (x - 1) * (y - 1)
        
        // Choose an integer e such that e and phi(n) are coprime
        var e = Int.random(in: 1..<phi)
        
        // Use Euclid's Algorithm to verify that e and phi(n) are coprime
        var g = findGreatestCommonDivisor(for: e, and: phi)
        while g != 1 {
            e = Int.random(in: 1..<phi)
            g = findGreatestCommonDivisor(for: e, and: phi)
        }
        
        // Use Extended Euclid's Algorithm to generate the private key
        let d = findMultiplicativeInverse(for: e, and: phi)
        
        publicKey = (e, n)
        privateKey = (d, n)
        
        return (publicKey, privateKey, completionStatus)
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
    
    enum CompletionStatus {
        case ok
        case error(title: String, body: String)
    }
}
