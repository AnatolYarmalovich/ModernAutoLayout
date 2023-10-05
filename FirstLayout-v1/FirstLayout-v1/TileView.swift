//
//  TileView.swift
//  FirstLayout-v1
//
//  Created by Anatol Yarmalovich on 04/10/2023.
//

import UIKit

@IBDesignable
class TileView: UIView {

    @IBInspectable var padding: CGFloat = 25 {
        didSet {
            setNeedsLayout()
        }
    }

    private let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()

    private let blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

    private func setupView() {
        addSubview(blueView)
        addSubview(redView)
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        let containerWidth = bounds.width
        let containerHeight = bounds.height

        let numberOfItems: CGFloat = 2
        let itemWidth = (containerWidth - (numberOfItems + 1) * padding) / numberOfItems
        let itemHeight = containerHeight - 2 * padding

        blueView.frame = .init(x: padding, y: padding, width: itemWidth, height: itemHeight)
        redView.frame = .init(x: 2 * padding + itemWidth, y: padding, width: itemWidth, height: itemHeight)
    }
}
