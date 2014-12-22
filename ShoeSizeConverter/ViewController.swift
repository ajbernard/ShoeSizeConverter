//
//  ViewController.swift
//  ShoeSizeConverter
//
//  Created by Arun Bernard on 12/21/14.
//  Copyright (c) 2014 Arun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Men's fields:
    @IBOutlet weak var inputMensShoeSizeText: UITextField!
    @IBOutlet weak var outputMensShoeSizeLabel: UILabel!
    
    //Women's fields:
    @IBOutlet weak var inputWomensShoeSizeText: UITextField!
    @IBOutlet weak var outputWomensShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func convertMensShoeSize(sender: UIButton) {
        
        //Wrap string to integer using optionals:
        var inputMensShoeSizeInt:Int = inputMensShoeSizeText.text.toInt()!
        
        //Converter constant:
        let converter = 30
        
        //Using shorthand add to converted shoe size int:
        inputMensShoeSizeInt += converter
        
        //Output to the user:
        outputMensShoeSizeLabel.text = "\(inputMensShoeSizeInt) in EU size"
        
        //Unhide the label:
        outputMensShoeSizeLabel.hidden = false
        
        //Resign the keyboard:
        inputMensShoeSizeText.resignFirstResponder()
    }
    
    
    @IBAction func convertWomensShoeSize(sender: UIButton) {
        
        //Get the input and assign to Object C: NSString
        let inputWomensShoeSizeStr:NSString = inputWomensShoeSizeText.text
        
        //Wrap to Double:
        var inputWomensShoeSizeDouble:Double = Double (inputWomensShoeSizeStr.doubleValue)
        
        //Converter constant:
        let converter = 30.56
        
        //do the conversion using shorthand:
        inputWomensShoeSizeDouble += converter
        
        //Just printing in the console:
        println(inputWomensShoeSizeDouble)
        
        //Output to the user:
        outputWomensShoeSizeLabel.text = "\(inputWomensShoeSizeDouble) in EU size"
        
        //Unhide the label:
        outputWomensShoeSizeLabel.hidden = false
        
        //Resign the keyboard:
        inputWomensShoeSizeText.resignFirstResponder()
        
        
    }
}

