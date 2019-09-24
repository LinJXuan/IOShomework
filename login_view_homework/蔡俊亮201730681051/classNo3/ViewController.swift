//
//  ViewController.swift
//  classNo3
//
//  Created by clement on 2019/9/24.
//  Copyright © 2019 clement. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var
    welcomeLable:
    UILabel!
    
    @IBOutlet weak var
    nameText:
    UITextField!
    
    @IBOutlet weak var
    passText:
    UITextField!
    
    @IBOutlet weak var
    hintLable:
    UILabel!
    
    @IBAction func loginButtonClick(_ sender:Any){
        
        if ((nameText.text=="feng") && (passText.text=="123")){
            hintLable.isHidden=false
            hintLable.text="login successful "
            if let userName = nameText.text{
                welcomeLable.text="welcome "+userName
            }
        }else{
            hintLable.isHidden=false
            hintLable.text="login false"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

