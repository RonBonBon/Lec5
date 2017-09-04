//
//  ViewController.swift
//  Lec4
//
//  Created by hackeru on 9 Elul 5777.
//  Copyright © 5777 hackeru. All rights reserved.
//

import UIKit
//a class that extends... UIViewController
class ViewController: UIViewController {
    
    //fields: properties:
    @IBOutlet weak var midsLabel: UILabel!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var btnAction: UIButton!


    var deck = BlackjackDeck()
    var score = 0 {
        didSet {
            scoreLabel.text = "\(score)"
            if score >= 21{
                btnAction.isEnabled = false
                btnAction.setTitle("Play Again", for: .normal)
            }
        }
    }

    @IBAction func dealTapped(_ sender: UIButton) {
        let card = deck.dealCard()
        
        score += card.value
        
        topLabel.text = card.rank.description
        midsLabel.text = card.suit.description
        bottomLabel.text = card.rank.description
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

