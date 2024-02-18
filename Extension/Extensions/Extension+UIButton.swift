//
//  Extension+UIButton.swift
//  Extension
//
//  Created by Münevver Elif Ay on 18.02.2024.
//

import UIKit

extension UIButton {
    func configure(bgColor: UIColor?, text: String?, image: UIImage?, cornerRadius: Int?) {
        self.backgroundColor = bgColor
        self.setTitle(text, for: .normal)
        self.setImage(image, for: .normal)
        self.layer.cornerRadius = CGFloat(cornerRadius ?? 0)

    }
}
