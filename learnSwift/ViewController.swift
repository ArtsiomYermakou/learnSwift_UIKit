//
//  ViewController.swift
//  learnSwift
//
//  Created by Артём Ермаков on 10.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var buttonSend: UIButton!
    @IBOutlet var labelTarget: UILabel!
    @IBOutlet var inputTarget: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelTarget.textColor = .white
        
        inputTarget.placeholder = "Enter messages..."
        inputTarget.clearButtonMode = .whileEditing
        
        
        
    }
    
    @IBAction func sendTextInLabel(_ sender: UIButton) {
        guard inputTarget.text != "" else { return }
        
        if let _ = Double(inputTarget.text!){
            
            let alert = UIAlertController(title: "Wrong text \(inputTarget.text!)", message: "Enter your name", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
            let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
            
            present(alert, animated: true, completion: nil)
            
            alert.addAction(ok)
            alert.addAction(cancel)
            inputTarget.text = ""
        } else {
            labelTarget.text = inputTarget.text
            inputTarget.text = ""
        }
    }
    
}

