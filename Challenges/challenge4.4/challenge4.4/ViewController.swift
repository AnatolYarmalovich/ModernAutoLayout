//
//  ViewController.swift
//  challenge4.4
//
//  Created by Anatol Yarmalovich on 09/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startHeightConstraint: NSLayoutConstraint!

    @IBAction func startBtnTapped() {
        if startHeightConstraint.constant  >= 0 {
            startHeightConstraint.constant -= 100.0
        } else {
            startHeightConstraint.constant += 100.0
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    private func setupViews() {
        startHeightConstraint.constant -= 100
    }
}

