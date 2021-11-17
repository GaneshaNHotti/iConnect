//
//  ViewController.swift
//  Data

import UIKit


class ViewController: UIViewController, UITextFieldDelegate {
    
    var uspw = "usn"
    var dobpw = "dob"
    
    
    @IBOutlet weak var usnTxt: UITextField!
    @IBOutlet weak var dobTxt: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.usnTxt.delegate = self
                self.dobTxt.delegate = self
            }
            func textFieldShouldReturn(_ textField: UITextField) -> Bool {
                 usnTxt.resignFirstResponder()
                 dobTxt.resignFirstResponder()
                return true
            }
            override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
                self.view.endEditing(true)
            }
            
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }

    @IBAction func loginBtn(_ sender: UIButton) {
        
        guard let usnfeild = usnTxt.text, !usnfeild.isEmpty,
        let pswdfeild = dobTxt.text, !pswdfeild.isEmpty else{
           showAlert3()
            return
        }
            getData()
    }
        
    func getData(){
        
        
        let usntxt = usnTxt.text
        let dobtxt = dobTxt.text
        
        guard  let path = Bundle.main.path(forResource: "examplesjson", ofType: "json") else {return}
            
                    let url = URL(fileURLWithPath: path)
                    
                    do{
                        let data = try Data(contentsOf: url)
                        let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
                        guard let array = json as?[Any] else {return
                      }
                        for user in array{
                        guard let userDict = user as? [String:Any] else {return}
                        guard let usn = userDict["usn"] as? String else { return}
                        guard let dob = userDict["dob"] as? String else { return}
                            
                            if (usnTxt.text!.contains(usn) && dobTxt.text!.contains(dob)){
                                
                                    UserDefaults.standard.setValue(usnTxt.text, forKey: "UserName")
                                    
                                        let storyboard = UIStoryboard(name: "Main", bundle: nil)
                                        let mainTabBarController = storyboard.instantiateViewController(identifier: "MainTabBarController")
                                        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(mainTabBarController)

                                uspw = usn
                                dobpw = dob
                            }
                           }
                        if (usntxt != uspw || dobtxt != dobpw ){
                            showAlert2()
                        }
                        
                        
                    
        }catch{
            print("error")
            }
    }
    
    func showAlert2(){
        let alert = UIAlertController(title: "Try again..", message:"Invalid username or password", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style:.cancel))
        present(alert, animated: true)
    }
    func showAlert3(){
        let alert = UIAlertController(title: "Try again..", message:"Missing Field Data", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style:.cancel))
        present(alert, animated: true)
    }
}

