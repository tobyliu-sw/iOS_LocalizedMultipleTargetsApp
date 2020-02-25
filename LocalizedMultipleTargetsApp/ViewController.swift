//
//  ViewController.swift
//  LocalizedMultipleTargetsApp
//
//  Created by Pin-Chou Liu on 2/25/20.
//  Copyright © 2020 Pin-Chou Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        if let localizedInfoDictionary = Bundle.main.localizedInfoDictionary,
            let appName = localizedInfoDictionary["CFBundleDisplayName"] as? String {
            self.appNameLabel.text = appName
        } else if let InfoDictionary = Bundle.main.infoDictionary,
            let appName = InfoDictionary["CFBundleName"] as? String {
            self.appNameLabel.text = appName
        }
    }


}

