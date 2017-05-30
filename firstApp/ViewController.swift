//
//  ViewController.swift
//  firstApp
//
//  Created by Kevin Hudson on 5/28/17.
//  Copyright © 2017 Kevin Hudson. All rights reserved.
//

import UIKit

//modes is short for calculator modes as in addition or subtraction mode
//enum mode section ---->

enum modes {
    case not_set;
    case addition;
    case subtraction;
}


class ViewController: UIViewController {
    // initialize the variables at start of program (what they will be set to) 
    
    @IBOutlet weak var label: UILabel!
    
    
    var labelString: String = "0";
    var currentMode:modes = .not_set;
    var savedNum:Int = 0;
    var lastButtonWasMode:Bool = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    
    };
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    };
    @IBAction func didPressPlus(_ sender: Any) {
    }
    @IBAction func didPressSubtract(_ sender: Any) {
    }

    @IBAction func didPressEquals(_ sender: Any) {
    }
    
    @IBAction func didPressClear(_ sender: Any) {
    }
    
    @IBAction func didPressNumber(_ sender: UIButton) {
        
        let stringValue:String? = sender.titleLabel?.text;
        labelString = labelString.appending(stringValue!);
        updateText();
        
    }
    
    
    
    func updateText() {
        guard let labelInt:Int = Int(labelString) else {
            return;
        }
        label.text = "\(labelInt)";
    }
    
    func changeMode(newMode:modes) {
        
    }
    
    
    

};

