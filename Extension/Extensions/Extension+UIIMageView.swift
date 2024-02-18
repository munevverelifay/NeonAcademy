//
//  Extension+UIIMageView.swift
//  Extension
//
//  Created by Münevver Elif Ay on 18.02.2024.
//

import UIKit

extension UIImageView {
    func configure(bgColor: UIColor?, image: UIImage?, cornerRadius: CGFloat?, contentMode: ContentMode?) {
        self.backgroundColor = bgColor
        self.image = image
        self.layer.cornerRadius = cornerRadius ?? 0
        self.contentMode = contentMode ?? .scaleAspectFit
        self.clipsToBounds = true
    }
}


