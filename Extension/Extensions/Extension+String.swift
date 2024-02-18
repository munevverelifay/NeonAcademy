//
//  Extension+String.swift
//  Extension
//
//  Created by Münevver Elif Ay on 16.02.2024.
//

import Foundation

extension String {
    func isPalindrome() -> Bool {
        let reversedWord = String(self.reversed())
        return self == reversedWord
    }
}


