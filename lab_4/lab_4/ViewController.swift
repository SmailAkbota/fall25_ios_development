//
//  ViewController.swift
//  lab_4
//
//  Created by Акбота Смаил on 24.10.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dice2: UIImageView!
    @IBOutlet weak var dice1: UIImageView!
    let diceImages = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dice1.image = UIImage(named: "dice1")
        dice2.image = UIImage(named: "dice6")
    }
    


    @IBAction func button(_ sender: Any) {
        let randomIndex1 = Int.random(in: 0...5)
        let randomIndex2 = Int.random(in: 0...5)
        dice1.image = UIImage(named: diceImages[randomIndex1])
        dice2.image = UIImage(named: diceImages[randomIndex2])
    }
    
   
}

