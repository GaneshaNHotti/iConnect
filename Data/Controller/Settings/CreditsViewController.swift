//
//  CreditsViewController.swift
//  Data
//
//  Created by Aishu on 03/06/21.
//

import UIKit

class CreditsViewController: UIViewController {

  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func AishwaryaLinkedIn(_ sender: Any) {
        // This needs to be ran on a device
        UIApplication.shared.open(URL(string: "https://www.linkedin.com/in/ekantha-aishwarya-s-b75a44196")! as URL, options: [:], completionHandler: nil)
    
    }
    @IBAction func ChandanaLinkedIn(_ sender: Any) {
        // This needs to be ran on a device
        UIApplication.shared.open(URL(string: "https://www.linkedin.com/in/chandana-m-4959311a9")! as URL, options: [:], completionHandler: nil)
    
    }
    @IBAction func ChethanLinkedIn(_ sender: Any) {
        // This needs to be ran on a device
        UIApplication.shared.open(URL(string: "https://www.linkedin.com/in/chethan-lingayat-954964177")! as URL, options: [:], completionHandler: nil)
    
    }
    @IBAction func GaneshaLinkedIn(_ sender: Any) {
        // This needs to be ran on a device
        UIApplication.shared.open(URL(string: "https://www.linkedin.com/in/ganesha-n-hotti-b36232194")! as URL, options: [:], completionHandler: nil)
    
    }
    
    @IBAction func AishwaryaGitHub(_ sender: Any) {
        // This needs to be ran on a device
        UIApplication.shared.open(URL(string: "https://github.com/aishu2351")! as URL, options: [:], completionHandler: nil)
    
    }
    @IBAction func ChandanaGitHub(_ sender: Any) {
        // This needs to be ran on a device
        UIApplication.shared.open(URL(string: "https://github.com/chandanaGowda12")! as URL, options: [:], completionHandler: nil)
    
    }
    @IBAction func ChethanGitHub(_ sender: Any) {
        // This needs to be ran on a device
        UIApplication.shared.open(URL(string: "https://github.com/ChethanMsrit/ChethanMsrit")! as URL, options: [:], completionHandler: nil)
    
    }
    @IBAction func GaneshaGitHub(_ sender: Any) {
        // This needs to be ran on a device
        UIApplication.shared.open(URL(string: "https://github.com/GaneshaNHotti")! as URL, options: [:], completionHandler: nil)
    
    }
}

