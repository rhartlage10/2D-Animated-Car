//
//  ViewController.swift
//  Project02-RonniHartlage
//
//  Created by Ronni Hartlage on 11/11/20.
//  Copyright © 2020 Ronni Hartlage. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var carBodyView : UIView?
    @IBOutlet var mainView : UIView?
    
    @IBOutlet var tire1View : UIView?
    @IBOutlet var tire2View : UIView?
    
    @IBOutlet var blueButton : UIButton?
    @IBOutlet var purpleButton : UIButton?
    @IBOutlet var greenButton : UIButton?
    @IBOutlet var orangeButton : UIButton?
    
    @IBAction func switchChanged(aSwitch : UISwitch) {
        
        if let mainViewAnimation = mainView, let tire1Animation = tire1View, let tire2Animation = tire2View {
            if aSwitch.isOn {
                mainViewAnimation.backgroundColor = UIColor.gray
                tire1Animation.backgroundColor = UIColor.gray
                tire2Animation.backgroundColor = UIColor.gray
            } else {
                mainViewAnimation.backgroundColor = UIColor.white
                tire1Animation.backgroundColor = UIColor.white
                tire2Animation.backgroundColor = UIColor.white
            }
        }
        
    }
    
    @IBAction func blueButtonPressed(blueButton : UIButton) {
            carBodyView?.backgroundColor = UIColor.systemTeal
    }
    
    @IBAction func purpleButtonPressed(purpleButton : UIButton) {
           carBodyView?.backgroundColor = UIColor.purple
       }
    
    @IBAction func greenButtonPressed(greenButton : UIButton) {
            carBodyView?.backgroundColor = UIColor.systemGreen
       }
    
    @IBAction func orangeButtonPressed(purpleButton : UIButton) {
           carBodyView?.backgroundColor = UIColor.orange
       }
    
}

