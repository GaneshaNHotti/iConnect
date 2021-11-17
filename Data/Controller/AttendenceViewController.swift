//
//  AttendenceViewController.swift
//  Data
//
//  Created by Aishu on 19/05/21.
//  Copyright © 2021 Chethan. All rights reserved.
//

import UIKit

class AttendenceViewController: UIViewController {
    
    //subject1
    @IBOutlet weak var sub1Txt: UILabel!
    @IBOutlet weak var sub1AttendenceTxt: UILabel!
    @IBOutlet weak var sub1dateTxt: UILabel!
    
    //subject2
    @IBOutlet weak var sub2Txt: UILabel!
    @IBOutlet weak var sub2AttendenceTxt: UILabel!
    @IBOutlet weak var sub2dateTxt: UILabel!
    
    //subject3
    @IBOutlet weak var sub3Txt: UILabel!
    @IBOutlet weak var sub3AttendenceTxt: UILabel!
    @IBOutlet weak var sub3datetxt: UILabel!
    
    //subject4
    @IBOutlet weak var sub4Txt: UILabel!
    @IBOutlet weak var sub4AttendenceTxt: UILabel!
    @IBOutlet weak var sub4dateTxt: UILabel!

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
                guard let sub1Attendence = userDict["sub1Attendance"] as? String else { return}
                guard let sub1date = userDict["sub1Date"] as? String else { return}
                
                
                //subject2
                guard let sub2 = userDict["sub2"] as? String else { return}
                guard let sub2Attendence = userDict["sub2Attendance"] as? String else { return}
                guard let sub2date = userDict["sub2Date"] as? String else { return}
                
                
                //subject3
                guard let sub3 = userDict["sub3"] as? String else { return}
                guard let sub3Attendence = userDict["sub3Attendance"] as? String else { return}
                guard let sub3date = userDict["sub3Date"] as? String else { return}
                
                
                //subject4
                guard let sub4 = userDict["sub4"] as? String else { return}
                guard let sub4Attendence = userDict["sub4Attendance"] as? String else { return}
                guard let sub4date = userDict["sub4Date"] as? String else { return}
   
                if userName.contains(usn){
                    //subject1
                    sub1Txt.text = sub1
                    sub1AttendenceTxt.text = sub1Attendence
                    sub1dateTxt.text = sub1date
                    
                    //subject2
                    sub2Txt.text = sub2
                    sub2AttendenceTxt.text = sub2Attendence
                    sub2dateTxt.text = sub2date
                    
                    //subject3
                    sub3Txt.text = sub3
                    sub3AttendenceTxt.text = sub3Attendence
                    sub3datetxt.text = sub3date
                    
                    //subject4
                    sub4Txt.text = sub4
                    sub4AttendenceTxt.text = sub4Attendence
                    sub4dateTxt.text = sub4date
                    
                
                }
            }
        }catch{
            print(error)
        }
    }
}
