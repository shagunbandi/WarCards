//
//  ViewController.swift
//  WarCards
//
//  Created by Shagun Bandi on 20/07/17.
//  Copyright © 2017 Shagun Bandi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var leftScore = 0
    var rightScore = 0
    
    let cardnames = ["ace", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(sender: UIButton){
        print("Deal Tapped")
        
        // Randomize Left from 2 to 10
        let leftNumber = Int(arc4random_uniform(13))
        
        // Set the left Image
        leftImageView.image = UIImage(named: cardnames[leftNumber])
        
        // Randomize right from 2 to 10
        let rightNumber = Int(arc4random_uniform(13))
        
        // Set the right Image
        rightImageView.image = UIImage(named: cardnames[rightNumber])
        
        if leftNumber > rightNumber{
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
            
        }
        else if leftNumber < rightNumber{
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
    }
    
}

