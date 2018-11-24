//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by András Kohlmann on 2018. 11. 24..
//  Copyright © 2018. András Kohlmann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1",
                     "ball2",
                     "ball3",
                     "ball4",
                     "ball5"]
    
    var randomBallNumber: Int = 0
    
    @IBOutlet weak var ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomizeImage()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        randomizeImage()
    }
    
    func randomizeImage() {
        randomBallNumber = Int.random(in: 0...4)
        ImageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomizeImage()
    }
}
