//
//  StartScreenMainLabel.swift
//  application
//
//  Created by Егорио on 25.09.2024.
//

import UIKit

extension UILabel {
    static func createMainLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        label.textAlignment = .left
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
}
