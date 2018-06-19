//
//  ViewController.swift
//  iAnimation
//
//  Created by Aneesh on 6/19/18.
//  Copyright © 2018 Aneesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bulb:UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func switchEvent(sender:UIButton){
        sender.isSelected = !sender.isSelected
        bulb.isSelected = !sender.isSelected
        //Here Two type of animation defined flash and pulse
        bulb.layer.iAnimateWith(style: .flash, duration: 0.3) { (sucess) in
            //After Completing Animation
            print(sucess!)
        }
    }


}

