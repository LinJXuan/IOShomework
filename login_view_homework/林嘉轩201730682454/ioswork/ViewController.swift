//
//  ViewController.swift
//  ioswork
//
//  Created by 最后一排的 on 2019/9/24.
//  Copyright © 2019 Johncompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var
    welcomeLabel:
    UILabel!
    
    @IBOutlet weak var
    tipsLabel:
    UILabel!
    
    @IBOutlet weak var
    loginButton:
    UIButton!
    
    @IBOutlet weak var
    accountInput:
    UITextField!
    
    @IBOutlet weak var
    passwordInput:
    UITextField!
    
    
    @IBAction func loginButtonClick(_ sender: Any) {
        
        if let userName = accountInput.text{
            welcomeLabel.text = "Welcome " + userName
        }
        
        if((accountInput.text=="Lin")&&(passwordInput.text=="123456")){
            tipsLabel.isHidden=false
            tipsLabel.text="login successful"
        }else{
            tipsLabel.isHidden=false
            tipsLabel.text="login fail"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let firstView = UIView(frame:CGRect(x:0,y:0,width:0,height:0))
//        firstView.backgroundColor = UIColor.blue
//        self.view = firstView
//
//        let secondView = UIView(frame:CGRect(x:10,y:10,width:300,height:300))
//        secondView.backgroundColor = UIColor.red
//        self.view.addSubview(secondView)
//
//        UIView.animate(withDuration: 2){
//            var transformTranslate = secondView.transform
//            transformTranslate = transformTranslate.translatedBy(x: 100, y:100)
//            secondView.transform = transformTranslate
//        }
//        UIView.animate(withDuration: 2){
//            var trans = secondView.transform
//            trans = trans.rotated(by: CGFloat(Double.pi/4))
//            secondView.transform = trans
//        }
        // Do any additional setup after loading the view.
    }
    
    
}

