//
//  resultViewController.swift
//  Data
//
//  Created by Aishu on 03/06/21.
//  Copyright © 2021 Chethan. All rights reserved.
//
import UIKit

class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func result(_ sender: Any) {
        // This needs to be ran on a device
        UIApplication.shared.open(URL(string: "http://exam.msrit.edu/")! as URL, options: [:], completionHandler: nil)
    
    }
}
