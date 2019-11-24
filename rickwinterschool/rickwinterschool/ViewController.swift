//
//  ViewController.swift
//  rickwinterschool
//
//  Created by RickSun on 2019/11/21.
//  Copyright © 2019 RickSun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var checklabel: UILabel!
    @IBOutlet weak var checktext: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var account: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var choose: UISegmentedControl!
    func isValidEmail(emailStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: emailStr)
    }
    
    //var loginorsingup = 0

    override func viewDidLoad() {

        super.viewDidLoad()
   
        }
    @IBAction func loginbutton(_ sender: Any) {
        let useraccount = account.text
        let userpassword = password.text
        let usercheck = checktext.text
        //print(choose.selectedSegmentIndex)
        if ( choose.selectedSegmentIndex == 0 ){
            
            if(useraccount == "appworks_school@gmail.com" && userpassword == "1234"){
                let controller = UIAlertController(title: "infromation", message: "success login", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                controller.addAction(okAction)
                present(controller, animated: true, completion: nil)
            } else if (useraccount == "" || userpassword == ""  ){
                var SendMessage = ""
                if (useraccount == ""){
                    SendMessage = "Account"
                }
                if( userpassword == "" && useraccount != "" ){
                    SendMessage = "Password"
                }else if(userpassword == "" ) {
                    SendMessage = "Account and Password"
                }
                    let controller = UIAlertController(title: "Error", message: SendMessage + " should not be empty ", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                    controller.addAction(okAction)
                    present(controller, animated: true, completion: nil)
             /*
                
            } else if (useraccount == "" && userpassword == ""  ){
                    let controller = UIAlertController(title: "Error!", message: "Account and password should not be empty ", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                    controller.addAction(okAction)
                    present(controller, animated: true, completion: nil)
                    
                
            } else if (useraccount == "" ){
                let controller = UIAlertController(title: "Error!", message: "Account should not be empty ", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                controller.addAction(okAction)
                present(controller, animated: true, completion: nil)
                
            } else if (userpassword == "" ){
                let controller = UIAlertController(title: "Error!", message: "password should not be empty ", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                controller.addAction(okAction)
                present(controller, animated: true, completion: nil)
                */
            } else if(useraccount != "appworks_school@gmail.com" || userpassword != "1234"){
                let controller = UIAlertController(title: "Error", message: "Login fail", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                controller.addAction(okAction)
                present(controller, animated: true, completion: nil)
            }
            
            
        }else if(choose.selectedSegmentIndex == 1){
            if(useraccount == "appworks_school@gmail.com" && userpassword == usercheck) {
                let controller = UIAlertController(title: "infomation", message: "This account has already been registered.", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                controller.addAction(okAction)
                present(controller, animated: true, completion: nil)
          
            }else if (useraccount == "" || userpassword == ""  || usercheck == ""){
                var SendMessage = ""
                if (useraccount == "" && SendMessage == "" ){
                    SendMessage = "Account"
                }
                if( userpassword == "" && SendMessage == "" ){
                    SendMessage = "Password"
                }else if(userpassword == "" && SendMessage != "") {
                    SendMessage = SendMessage + " and Password"
                }
                if( usercheck == "" && SendMessage == "" ){
                    SendMessage = "Check"
                }else if(usercheck == "" && SendMessage != "") {
                    SendMessage = SendMessage + " and Check"
                }
                    let controller = UIAlertController(title: "Error", message: SendMessage + " should not be empty ", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                    controller.addAction(okAction)
                    present(controller, animated: true, completion: nil)
            } else if (userpassword != usercheck){
                          let controller = UIAlertController(title: "Error", message: "password and check should be equal ", preferredStyle: .alert)
                          let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                          controller.addAction(okAction)
                          present(controller, animated: true, completion: nil)
                
            } else{
                let mailtype = isValidEmail(emailStr: useraccount ?? "")
                if (mailtype){
                    let controller = UIAlertController(title: "information", message: "Sign up success", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                    controller.addAction(okAction)
                    present(controller, animated: true, completion: nil)
                }else{
                    let controller = UIAlertController(title: "Error!", message: "account is not email Type ", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                              controller.addAction(okAction)
                              present(controller, animated: true, completion: nil)
                
                }
                
                /*
            } else if (useraccount == "" ){
                let controller = UIAlertController(title: "Error!", message: "Account should not be empty ", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                controller.addAction(okAction)
                present(controller, animated: true, completion: nil)
                
            } else if (userpassword == "" ){
                let controller = UIAlertController(title: "Error!", message: "password should not be empty ", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                controller.addAction(okAction)
                present(controller, animated: true, completion: nil)
                
            } else if (usercheck == "" ){
                let controller = UIAlertController(title: "Error!", message: "Check should not be empty ", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                controller.addAction(okAction)
                present(controller, animated: true, completion: nil)
 
 */
            }
        }
    }
    
    @IBAction func pressedSegmented(_ sender: UISegmentedControl) {
        
        //loginorsingup = sender.selectedSegmentIndex
        if ( sender.selectedSegmentIndex == 0 ){
            checklabel.isEnabled = false
            checktext.isEnabled = false
            checktext.text = ""
            button.setTitle("Log In", for: .normal)
           // print("00000")
        }
        else if (sender.selectedSegmentIndex == 1){
            button.setTitle("Sign up", for: .normal)
            checklabel.isEnabled = true
            checktext.isEnabled = true
           // print("1111")
        }
    }

}
