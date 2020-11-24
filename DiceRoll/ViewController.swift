//
//  ViewController.swift
//  DiceRoll
//
//  Created by Resul Emül on 7/24/20.
//  Copyright © 2020 NeviPlay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceOne: UIImageView!
    @IBOutlet weak var diceTwo: UIImageView!
    @IBOutlet weak var rollButtonOut: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        rollButtonOut.layer.cornerRadius = 35
        rollButtonOut.clipsToBounds = true
        
    }

    @IBAction func rollButton(_ sender: UIButton) {
        
        for timer in 1...50 {
        
        
            let seconds = Double(timer) / 100
            DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                let diceOneNumber = Int.random(in: 1...6)
                let diceTwoNumber = Int.random(in: 1...6)
                self.diceOne.image = UIImage(named: String(diceOneNumber))
                self.diceTwo.image = UIImage(named: String(diceTwoNumber))
            }
            
            
            
        }
        
        
    }
    
}

