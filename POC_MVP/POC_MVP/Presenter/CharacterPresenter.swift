//
//  CharacterPresenter.swift
//  POC_MVP
//
//  Created by resource on 05/03/2018.
//  Copyright © 2018 Sumiya. All rights reserved.
//

import Foundation

class CharacterPresenter {
    
    weak private var viewCharacter : CharacterInterface?
    
    init() {
    }
    
    func attachView(view:CharacterInterface){
        viewCharacter = view
    }
    
    func detachView() {
        viewCharacter = nil
    }
    
    
    func GetCharacter() -> Void {
        let character = CharacterAPI.sharedInstance.GetCharacter()
        viewCharacter?.LoadCharacter(character: character)
    }
    
}
