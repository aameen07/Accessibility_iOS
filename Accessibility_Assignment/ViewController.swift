//
//  ViewController.swift
//  Accessibility_Assignment
//
//  Created by Abdullah Aameen on 09/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnClick: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnClick.isAccessibilityElement = true
        applyAccess()
        
    }
    
    
    @IBAction func btnNext(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        self.present(vc, animated: true)
    }
    
    func applyAccess(){
        btnClick.accessibilityLabel = "Change View Button"
        btnClick.accessibilityHint = "takes you to next screen"
    }
}

