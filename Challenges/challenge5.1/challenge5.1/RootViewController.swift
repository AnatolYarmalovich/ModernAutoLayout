//
//  RootViewController.swift
//  challenge5.1
//
//  Created by Anatol Yarmalovich on 10/10/2023.
//

import UIKit

class RootViewController: UIViewController {

    let redView = UIView.makeView(.red)
    let greenView = UIView.makeView(.green)

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }

    private func setupViews() {
        view.backgroundColor = .yellow
        view.addSubview(greenView)
        greenView.addSubview(redView)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            greenView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            greenView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            greenView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),

            redView.leadingAnchor.constraint(equalTo: greenView.leadingAnchor, constant: 25),
            redView.trailingAnchor.constraint(equalTo: greenView.trailingAnchor, constant: -25),
            redView.centerYAnchor.constraint(equalTo: greenView.centerYAnchor),
            redView.heightAnchor.constraint(equalTo: greenView.heightAnchor, multiplier: 0.2)
        ])
    }
}

