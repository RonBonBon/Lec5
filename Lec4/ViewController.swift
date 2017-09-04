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


    var deck = BlackjackDeck()

    @IBAction func dealTapped(_ sender: UIButton) {
        let card = deck.dealCard()
        topLabel.text = card.rank.description
        midsLabel.text = card.suit.description
        bottomLabel.text = card.rank.description
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

