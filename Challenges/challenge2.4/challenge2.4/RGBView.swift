//
//  RGBView.swift
//  challenge2.4
//
//  Created by Anatol Yarmalovich on 08/10/2023.
//

import UIKit

@IBDesignable
final class RGBView: UIView {

    @IBInspectable
    public var verticalSpacing: CGFloat = 20.0 {
        didSet {
            setNeedsLayout()
        }
    }

    enum ViewMetrics {
        static let numberOfSubviews: CGFloat = 3
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

    private let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
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

    override func layoutSubviews() {
        super.layoutSubviews()
        setupLayout()
    }

    private func setupView() {
        backgroundColor = .white
        addSubview(redView)
        addSubview(greenView)
        addSubview(blueView)
    }

    private func setupLayout() {
        let containerHeight = bounds.height
        let containerWidth = bounds.width

        let subViewHeight = (containerHeight - 2 * verticalSpacing) / ViewMetrics.numberOfSubviews

        redView.frame = .init(x: 0, y: 0, width: containerWidth, height: subViewHeight)

        let greenViewY = subViewHeight + verticalSpacing

        greenView.frame = .init(x: 0, y: greenViewY, width: containerWidth, height: subViewHeight)

        let blueViewY = (subViewHeight + verticalSpacing) * 2

        blueView.frame = .init(x: 0, y: blueViewY, width: containerWidth, height: subViewHeight)
    }
}

