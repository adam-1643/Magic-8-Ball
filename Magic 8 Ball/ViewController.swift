//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Adam Stanislawski on 20.01.2018.
//  Copyright © 2018 Adam Stanislawski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ballImage: UIImageView!
    
    var random : Int = 1
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setImage()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        setImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        setImage()
    }
    
    func setImage() {
        random = Int(arc4random_uniform(5))
        
        ballImage.image = UIImage(named: ballArray[random])
        UIImpactFeedbackGenerator(style: .heavy).impactOccurred() 
    }
    
}

