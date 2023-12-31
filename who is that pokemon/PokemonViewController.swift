//
//  ViewController.swift
//  who is that pokemon
//
//  Created by alerma on 26/12/23.
//

import UIKit

class PokemonViewController: UIViewController {
    
    @IBOutlet weak var labelScore: UILabel!
    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet var answerButtons: [UIButton]!
    @IBOutlet weak var pokemonImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelScore.text = "Puntaje: 100"
        createButtons()
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        print(sender.title(for: .normal)!)
    }
    
    func createButtons() {
        for button in answerButtons {
            button.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
            button.layer.shadowOffset = CGSize(width: 0, height: 2.0)
            button.layer.shadowOpacity = 1.0
            button.layer.shadowRadius = 0
            button.layer.masksToBounds = false
            button.layer.cornerRadius = 10.0
        }
    }
}

