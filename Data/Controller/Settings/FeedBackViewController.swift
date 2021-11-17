//
//  FeedBackViewController.swift
//  Data
//
//  Created by Aishu on 04/06/21.
//  Copyright © 2021 Chethan. All rights reserved.
//

import UIKit
import MessageUI

class FeedBackViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    @IBAction func emailButtonTapped(_ sender: SAButton) {
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
        composer.setSubject("Feedback")
        composer.setMessageBody("Please write your Feedback Below", isHTML: false)
        
        present(composer, animated: true)
    }
}


extension ViewController: MFMailComposeViewControllerDelegate {
    
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
}




