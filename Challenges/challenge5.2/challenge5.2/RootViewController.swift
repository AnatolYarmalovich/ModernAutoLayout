//
//  RootViewController.swift
//  challenge5.2
//
//  Created by Anatol Yarmalovich on 10/10/2023.
//

import UIKit

final class RootViewController: UIViewController {

    private let greenView: TileView = {
        let view = TileView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }

    private func setupViews() {
        view.backgroundColor = .yellow
        view.addSubview(greenView)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            greenView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            greenView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            greenView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25)
        ])
    }
}

