//
//  foodViewController.swift
//  classNo3
//
//  Created by clement on 2019/10/15.
//  Copyright © 2019 clement. All rights reserved.
//

import UIKit

class foodViewController: UIViewController {
    var  foodForEdit : food?
    
    

    @IBOutlet weak var desText: UITextField!
    
    @IBOutlet weak var nametext: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nametext.text = foodForEdit?.name
        self.desText.text = foodForEdit?.adescription
        self.navigationItem.title=foodForEdit?.name
        // Do any additional setup after loading the view.
    }
    
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "saveToList"{
             print("save")
            foodForEdit=food(name:self.nametext.text!,adescription: self.desText.text!)
        }
    }
    

}
