//
//  desViewController.swift
//  baigei
//
//  Created by Apple on 2019/10/15.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class desViewController: UIViewController {
    var forEdit: imageList?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.name.text = forEdit?.name
        self.des.text = forEdit?.adescription
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var name: UITextField!
    
    
    @IBOutlet weak var des: UITextField!
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "saveToList" {
            print("save")
            forEdit=imageList(name: self.name.text!, adescription: self.des.text! )
        }
        if segue.identifier == "cancelToList" {
            
        }
    }
    
    

}
