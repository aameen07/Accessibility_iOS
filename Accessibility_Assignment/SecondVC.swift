//
//  SecondVC.swift
//  Accessibility_Assignment
//
//  Created by Abdullah Aameen on 09/02/23.
//

import UIKit

class SecondVC: UIViewController {
    
    @IBOutlet weak var BtnA: UIButton!
    @IBOutlet weak var BtnB: UIButton!
    @IBOutlet weak var BtnC: UIButton!
    @IBOutlet weak var BtnGoBack: UIButton!
    
    override func viewDidLoad() {
//        UIAccessibility.post(notification: .screenChanged, argument: BtnB)
        super.viewDidLoad()
        BtnA.isAccessibilityElement = true
        BtnB.isAccessibilityElement = true
        BtnC.isAccessibilityElement = true
        BtnGoBack.isAccessibilityElement = true
        
        BtnA.accessibilityLabel = "Button A"
        BtnA.accessibilityHint = "First Button of the screen"
        BtnA.accessibilityTraits = .button
        
        BtnB.accessibilityLabel = "Button B"
        BtnB.accessibilityHint = "Second Button of the screen"
        BtnB.accessibilityTraits = .button
        
        BtnC.accessibilityLabel = "Button C"
        BtnC.accessibilityHint = "Third Button of the screen"
        BtnC.accessibilityTraits = .button
        
        BtnGoBack.accessibilityLabel = "Go Back Button"
        BtnGoBack.accessibilityHint = "This buttons takes you to previous screen"
        BtnGoBack.accessibilityTraits = .button
        
        view.accessibilityElements = [BtnB,BtnA,BtnC,BtnGoBack]
    }

//    override var accessibilityElements: [Any]?{
//        set{}
//        get{
//            return [
//                self.BtnB as Any,
//                self.BtnA as Any,
//                self.BtnC as Any,
//                self.BtnGoBack as Any
//            ]
//        }
//    }
    
    @IBAction func btnBack(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

}
