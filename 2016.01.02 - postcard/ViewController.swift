//
//  ViewController.swift
//  2016.01.02 - postcard
//
//  Created by Norman Kilpatrick on 2/01/2016.
//  Copyright © 2016 Norman Kilpatrick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblMessage: UILabel!
    @IBOutlet weak var txtEnterText: UITextField!
    @IBOutlet weak var txtEnterMoreText: UITextField!
    @IBOutlet weak var imgGalleon: UIImageView!
    @IBOutlet weak var btnSend: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSendPressed(sender: UIButton) {
        lblMessage.hidden = false
        lblMessage.text = txtEnterText.text
        txtEnterText.text = ""
        lblMessage.textColor = UIColor.yellowColor()
        btnSend.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        txtEnterText.resignFirstResponder()
        
    }
}