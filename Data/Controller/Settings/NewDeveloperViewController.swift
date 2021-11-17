//
//  NewDeveloperViewController.swift
//  Data
//
//  Created by Aishu on 03/06/21.
//  Copyright © 2021 Chethan. All rights reserved.
//
import UIKit
import MessageUI

class NewDeveloperViewController: UIViewController, MFMailComposeViewControllerDelegate  {
   
    @IBAction func mailButton(_ sender: SAButton) {
        showMailComposer()
    }
    
    
    func showMailComposer() {
        
        guard MFMailComposeViewController.canSendMail() else {
            //Show alert informing the user
            return
        }
        
        let composer = MFMailComposeViewController()
        composer.mailComposeDelegate = self
        composer.setToRecipients(["iconnectrit@gmail.com"])
        composer.setSubject("Join as Developer")
        composer.setMessageBody("Please mention your USN and Department below......", isHTML: false)
        
        present(composer, animated: true)
    }
}



    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        if let _ = error {
            //Show error alert
            controller.dismiss(animated: true)
            return
        }
        
        switch result {
        case .cancelled:
            print("Cancelled")
        case .failed:
            print("Failed to send")
        case .saved:
            print("Saved")
        case .sent:
            print("Email Sent")
        @unknown default:
            break
        }
        
        controller.dismiss(animated: true)
    }

