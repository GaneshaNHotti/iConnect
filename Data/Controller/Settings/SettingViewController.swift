//
//  SettingViewController.swift
//  Data
//
//  Created by Aishu on 19/05/21.
//  Copyright © 2021 Chethan. All rights reserved.
//

import UIKit
import MessageUI
struct section {
    let title: String
    let options: [SettingOption]
}


struct SettingOption{
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    let handler: (() -> Void)
}

class SettingViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var identites = ["ViewController","feedback","help","credits","newDeveloper"]
        @IBOutlet weak var tblSettingDescription: UITableView!
        
    @IBOutlet weak var usnTxt: UILabel!
    @IBOutlet weak var Name: UILabel!
    
    
    private let tableview: UITableView = {
        let table = UITableView (frame: .zero, style: .grouped)
        table.register(SettingTableViewCell.self, forCellReuseIdentifier: SettingTableViewCell.identifier)
        return table
    }()

    var models = [section]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        title = "Settings"
        view.addSubview(tableview)
        tableview.delegate = self
        tableview.dataSource = self
        tableview.frame = view.bounds
        
    }
    
    func configure(){
        
        models.append(section(title: "", options: [
            SettingOption(title: "Change User", icon: UIImage(systemName: "house"), iconBackgroundColor: .systemRed){
               
                       },
            
            SettingOption(title: "FeedBack", icon: UIImage(systemName: "airplane"), iconBackgroundColor: .systemGreen){
                                    
            },
            SettingOption(title: "Help", icon: UIImage(systemName: "cloud"), iconBackgroundColor: .systemOrange){
                                    
            },
            SettingOption(title: "Credits", icon: UIImage(systemName: "house"), iconBackgroundColor: .systemTeal){
                                                       
                               },
            
            SettingOption(title: "Join as a Developer", icon: UIImage(systemName: "house"), iconBackgroundColor: .systemPink){
                
                                                       
            }
            
        ]))
        
      
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = models[section]
        return section.title
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return models.count
    }
    
    func tableView(_ tableView:UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return models[section].options.count
    }
    func tableView(_ tableView:UITableView,cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let model = models[indexPath.section].options[indexPath.row]
        guard let cell = tableview.dequeueReusableCell(
                withIdentifier: SettingTableViewCell.identifier,
                for: indexPath
        ) as?SettingTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(with: model)
        return cell
    }
    
    func tableView(_ tableview: UITableView, didSelectRowAt indexPath: IndexPath){
       // tableview.deselectRow(at: indexPath, animated: true)
       let model = models[indexPath.section].options[indexPath.row]
        model.handler()
        //performSegue(withIdentifier: "showdetail", sender: self)
        
        
        
        let vc = identites[indexPath.row]
        let viewController = storyboard?.instantiateViewController(withIdentifier: vc)
        self.navigationController?.pushViewController(viewController!, animated: true)
    }
    

}
