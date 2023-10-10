//
//  TileView.swift
//  challenge5.2
//
//  Created by Anatol Yarmalovich on 10/10/2023.
//

import UIKit

final class TileView: UIView {

    private let blueView = UIView.makeView(.blue)
    private let redView = UIView.makeView(.red)

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
        setupConstraints()
    }

    private func setupView() {
        addSubview(blueView)
        addSubview(redView)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            blueView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
            blueView.topAnchor.constraint(equalTo: topAnchor, constant: 25),
            blueView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -25),

            redView.leadingAnchor.constraint(equalTo: blueView.trailingAnchor, constant: 25),
            redView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            redView.centerYAnchor.constraint(equalTo: blueView.centerYAnchor),
            redView.heightAnchor.constraint(equalTo: blueView.heightAnchor),
            redView.widthAnchor.constraint(equalTo: blueView.widthAnchor)
        ])
    }
}
