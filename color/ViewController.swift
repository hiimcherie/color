//
//  ViewController.swift
//  color
//
//  Created by Cherie Li on 2019/4/13.
//  Copyright © 2019 Cherie Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorsliderswitch: UISwitch!
    @IBOutlet weak var clothImageView: UIImageView!
    @IBOutlet weak var redslider: UISlider!
    @IBOutlet weak var blueslider: UISlider!
    @IBOutlet weak var alphaslider: UISlider!
    
    @IBOutlet weak var greenslider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func redsliderchange(_ sender: Any) {
        clothImageView.backgroundColor = UIColor(red: CGFloat(redslider.value), green: CGFloat(greenslider.value), blue: CGFloat(blueslider.value), alpha: CGFloat(alphaslider.value))
        
    }
    
    @IBAction func bluesliderchange(_ sender: Any) {
          clothImageView.backgroundColor = UIColor(red: CGFloat(redslider.value), green: CGFloat(greenslider.value), blue: CGFloat(blueslider.value), alpha: CGFloat(alphaslider.value))
    }
    @IBAction func greensliderchange(_ sender: Any) {
          clothImageView.backgroundColor = UIColor(red: CGFloat(redslider.value), green: CGFloat(greenslider.value), blue: CGFloat(blueslider.value), alpha: CGFloat(alphaslider.value))
    }
    @IBAction func alphasliderchange(_ sender: Any) {
          clothImageView.backgroundColor = UIColor(red: CGFloat(redslider.value), green: CGFloat(greenslider.value), blue: CGFloat(blueslider.value), alpha: CGFloat(alphaslider.value))
    }
    @IBAction func random(_ sender: Any) {
        
        let rvalue = Float.random(in: 0...1)
        let gvalue = Float.random(in: 0...1)
        let bvalue = Float.random(in: 0...1)
        
        if colorsliderswitch.isOn == true{
            redslider.value = rvalue
            greenslider.value = gvalue
            blueslider.value = bvalue
        }
        clothImageView.backgroundColor = UIColor(red: CGFloat(rvalue), green: CGFloat(gvalue), blue: CGFloat(bvalue), alpha: CGFloat(alphaslider.value))
    }
}

