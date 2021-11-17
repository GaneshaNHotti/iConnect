//
//  IAViewController.swift
//  Data
//
//  Created by Aishu on 19/05/21.
//  Copyright © 2021 Chethan. All rights reserved.
//

import UIKit

class IAViewController: UIViewController {

    @IBOutlet weak var sub1NameTxt: UILabel!
    @IBOutlet weak var s1T1Txt: UILabel!
    @IBOutlet weak var s1T2Txt: UILabel!
    @IBOutlet weak var s1A1Txt: UILabel!
    @IBOutlet weak var s1A2Txt: UILabel!
    @IBOutlet weak var s1FinalTxt: UILabel!
        
    @IBOutlet weak var sub2NameTxt: UILabel!
    @IBOutlet weak var s2T1Txt: UILabel!
    @IBOutlet weak var s2T2Txt: UILabel!
    @IBOutlet weak var s2A1Txt: UILabel!
    @IBOutlet weak var s2A2Txt: UILabel!
    @IBOutlet weak var s2FinalTxt: UILabel!

    @IBOutlet weak var sub3NameTxt: UILabel!
    @IBOutlet weak var s3T1Txt: UILabel!
    @IBOutlet weak var s3T2Txt: UILabel!
    @IBOutlet weak var s3A1Txt: UILabel!
    @IBOutlet weak var s3A2Txt: UILabel!
    @IBOutlet weak var s3FinalTxt: UILabel!

    @IBOutlet weak var sub4NameTxt: UILabel!
    @IBOutlet weak var s4T1Txt: UILabel!
    @IBOutlet weak var s4T2Txt: UILabel!
    @IBOutlet weak var s4A1Txt: UILabel!
    @IBOutlet weak var s4A2Txt: UILabel!
    @IBOutlet weak var s4FinalTxt: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
    }

    func getData(){
        let userName = UserDefaults.standard.value(forKey: "UserName") as! String
        
        guard let path = Bundle.main.path(forResource: "examplesjson", ofType: "json") else {
            return
        }
        
        let url = URL(fileURLWithPath: path)
        
        do{
            let data = try Data(contentsOf: url)
            let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
            
            guard let array = json as? [Any] else {
                return
            }
            for user in array{
                guard let userDict = user as? [String:Any] else {return}
                guard let usn = userDict["usn"] as? String else { return}
                
                //subject1
                guard let sub1 = userDict["sub1"] as? String else { return}
                guard let S1T1 = userDict["S1T1"] as? String else { return}
                guard let S1T2 = userDict["S1T2"] as? String else { return}
                guard let S1A1 = userDict["S1A1"] as? String else { return}
                guard let S1A2 = userDict["S1A2"] as? String else { return}
                guard let S1CIE = userDict["S1CIE"] as? String else { return}
                
                //subject2
                guard let sub2 = userDict["sub2"] as? String else { return}
                guard let S2T1 = userDict["S2T1"] as? String else { return}
                guard let S2T2 = userDict["S2T2"] as? String else { return}
                guard let S2A1 = userDict["S2A1"] as? String else { return}
                guard let S2A2 = userDict["S2A2"] as? String else { return}
                guard let S2CIE = userDict["S2CIE"] as? String else { return}
                
                //subject3
                guard let sub3 = userDict["sub3"] as? String else { return}
                guard let S3T1 = userDict["S3T1"] as? String else { return}
                guard let S3T2 = userDict["S3T2"] as? String else { return}
                guard let S3A1 = userDict["S3A1"] as? String else { return}
                guard let S3A2 = userDict["S3A2"] as? String else { return}
                guard let S3CIE = userDict["S3CIE"] as? String else { return}
                
                
                //subject4
                guard let sub4 = userDict["sub4"] as? String else { return}
                guard let S4T1 = userDict["S4T1"] as? String else { return}
                guard let S4T2 = userDict["S4T2"] as? String else { return}
                guard let S4A1 = userDict["S4A1"] as? String else { return}
                guard let S4A2 = userDict["S4A2"] as? String else { return}
                guard let S4CIE = userDict["S4CIE"] as? String else { return}
                
                
//                //subject5
//                guard let sub5 = userDict["sub5IA"] as? String else { return}
                
                if userName.contains(usn){
                    sub1NameTxt.text = sub1
                    s1T1Txt.text = S1T1
                    s1T2Txt.text = S1T2
                    s1A1Txt.text = S1A1
                    s1A2Txt.text = S1A2
                    s1FinalTxt.text = S1CIE
                    
                    sub2NameTxt.text = sub2
                    s2T1Txt.text = S2T1
                    s2T2Txt.text = S2T2
                    s2A1Txt.text = S2A1
                    s2A2Txt.text = S2A2
                    s2FinalTxt.text = S2CIE
                    
                    sub3NameTxt.text = sub3
                    s3T1Txt.text = S3T1
                    s3T2Txt.text = S3T2
                    s3A1Txt.text = S3A1
                    s3A2Txt.text = S3A2
                    s3FinalTxt.text = S3CIE
                    
                    sub4NameTxt.text = sub4
                    s4T1Txt.text = S4T1
                    s4T2Txt.text = S4T2
                    s4A1Txt.text = S4A1
                    s4A2Txt.text = S4A2
                    s4FinalTxt.text = S4CIE
                    
                }
            }
        }catch{
            print(error)
        }
    }
}
