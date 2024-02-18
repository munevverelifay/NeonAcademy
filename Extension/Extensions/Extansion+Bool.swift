//
//  Extansion+Bool.swift
//  Extension
//
//  Created by Münevver Elif Ay on 16.02.2024.
//

import Foundation

extension Bool {
    mutating func toggle() { //değerin değiştirilebilmesi için mutating kullandım
        self = !self
    }
}
