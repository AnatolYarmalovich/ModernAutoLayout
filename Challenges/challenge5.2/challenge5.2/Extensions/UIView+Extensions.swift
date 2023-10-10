//
//  UIView+Extensions.swift
//  challenge5.2
//
//  Created by Anatol Yarmalovich on 10/10/2023.
//

import UIKit

extension UIView {

    static func makeView(_ color: UIColor) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = color
        return view
    }
    
}
