//
//  ViewController.swift
//  baigei
//
//  Created by Apple on 2019/9/24.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBOutlet weak var welcome1: UILabel!
    
    
    
    @IBOutlet weak var nameText: UITextField!
    
    
    
    @IBOutlet weak var passText: UITextField!
    
    
    @IBOutlet weak var hintLabel: UILabel!
    
    
    
    @IBAction func loginButtonClick(_ sender: Any) {
        if let userName = nameText.text{
            welcome1.text="welcome " + userName
        }
        if((nameText.text=="feng")&&(passText.text=="123")){
            hintLabel.isHidden=false
            hintLabel.text="Success"
        }else{
            hintLabel.isHidden=false
            hintLabel.text="Failed"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
        print("dismiss")
    }
    @IBAction func exitTohere(segue: UIStoryboardSegue){
        print("to")
    }

}



