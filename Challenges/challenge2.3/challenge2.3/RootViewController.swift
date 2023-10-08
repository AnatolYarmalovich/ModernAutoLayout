//
//  RootViewController.swift
//  challenge2.3
//
//  Created by Anatol Yarmalovich on 08/10/2023.
//

import UIKit

final class RootViewController: UIViewController {

    override func loadView() {
        view = RGBView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

