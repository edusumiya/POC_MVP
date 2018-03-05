//
//  ViewController.swift
//  POC_MVP
//
//  Created by resource on 02/03/2018.
//  Copyright © 2018 Sumiya. All rights reserved.
//

import UIKit

class CharacterViewController: UIViewController {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblHeight: UILabel!
    @IBOutlet weak var lblHairColor: UILabel!
    
    private let characterPresenter = CharacterPresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        characterPresenter.attachView(view: self)
        characterPresenter.GetCharacter()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension CharacterViewController : CharacterInterface
{
    func LoadCharacter(character: CharacterModel) {
        lblName.text = character.name
        lblHeight.text = character.height
        lblHairColor.text = character.hair_color
    }
}
