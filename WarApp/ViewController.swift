//
//  ViewController.swift
//  WarApp
//
//  Created by Christopher Ching on 2017-09-26.
//  Copyright © 2017 Christopher Ching. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: Any) {
        let leftRandomNumber = arc4random_uniform(13) + 2
        
        let rightRandomNumber = arc4random_uniform(13) + 2
        
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        if leftRandomNumber > rightRandomNumber {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if rightRandomNumber > leftRandomNumber {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else if leftRandomNumber == rightRandomNumber {
            
        }
    }
    
}

