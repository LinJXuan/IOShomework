//
//  ViewController.swift
//  testView
//
//  Created by Apple on 2019/9/24.
//  Copyright © 2019 hg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var picture: UIImageView!
    
    
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    
    @IBOutlet weak var userNameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    
    @IBOutlet weak var hintLabel: UILabel!
    
    
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    @IBAction func login(_ sender: Any) {
        
        if let username = userNameText.text{
            welcomeLabel.text = "welcome " + username
        }
        
        if((userNameText.text == "yang")&&(passwordText.text=="123")){
            hintLabel.isHidden = false
            hintLabel.text = "login successfully"
        }else{
            welcomeLabel.isHidden = true
            hintLabel.isHidden = false
            hintLabel.text="login failed,wrong username or password!"
        }
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

