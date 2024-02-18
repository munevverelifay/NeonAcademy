//
//  Extension+Int.swift
//  Extension
//
//  Created by Münevver Elif Ay on 16.02.2024.
//

import Foundation

extension Int {
    func checkPrimeNumber() -> Bool{
        if self <= 1 {
            return false
        }
        for i in 2..<self {
            if self % i == 0 {
                return false
            }
        }
        return true
    }
}
