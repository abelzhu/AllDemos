//
//  ViewController.swift
//  demo1
//
//  Created by Abel zhu on 2019/3/19.
//  Copyright © 2019 AbelTest. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: Actions
   
    @IBAction func setDefaultMealName(_ sender: UIButton) {
        mealNameLabel.text = "default meal"
    }
    
   
    
    

}

