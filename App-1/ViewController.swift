//
//  ViewController.swift
//  App-1
//
//  Created by Daniel Adu-Djan on 11/27/19.
//  Copyright © 2019 Luzcode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var initViewColor: UIColor!
    var textColorButtonTapCount: Int = 0
    var viewColorButtonTapCount: Int = 0
    
    @IBOutlet weak var introTextLabel: UILabel!
    @IBOutlet weak var userInputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initViewColor = view.backgroundColor
    }

    @IBAction func changeIntroTextColor(_ sender: Any) {
        if textColorButtonTapCount % 2 == 0 {
            introTextLabel.textColor = UIColor.white
        } else {
            introTextLabel.textColor = UIColor.black
        }
        textColorButtonTapCount += 1
    }
    
    @IBAction func changeViewColor(_ sender: Any) {
        if viewColorButtonTapCount % 2 == 0 {
            view.backgroundColor = UIColor.purple
        } else {
            view.backgroundColor = initViewColor
        }
        viewColorButtonTapCount += 1
    }
    
    @IBAction func changeText(_ sender: Any) {
        //introTextLabel.text = "Goodbye!"
        if userInputTextField.text != "" {
            introTextLabel.text = userInputTextField.text
            userInputTextField.text = ""
            view.endEditing(true)
        }
    }
    
    @IBAction func resetToInitialView(_ sender: Any) {
        introTextLabel.text = "Hello from Daniel!"
        introTextLabel.textColor = UIColor.black
        view.backgroundColor = initViewColor
        textColorButtonTapCount = 0
        viewColorButtonTapCount = 0
    }
}

