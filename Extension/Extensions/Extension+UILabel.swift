//
//  Extension+UILabel.swift
//  Extension
//
//  Created by Münevver Elif Ay on 18.02.2024.
//

import UIKit

extension UILabel {
    func configure(bgColor: UIColor?, text: String?, cornerRadius: Int?, textAlignment: NSTextAlignment?, numberOfLines: Int?) {
        self.backgroundColor = bgColor
        self.text = text
        self.layer.cornerRadius = CGFloat(cornerRadius ?? 0)
        self.textAlignment = textAlignment ?? .center
        self.numberOfLines = numberOfLines ?? 0

    }
}
