//
//  ViewInterface.swift
//  POC_MVP
//
//  Created by resource on 03/03/2018.
//  Copyright © 2018 Sumiya. All rights reserved.
//

import Foundation

protocol CharacterInterface : NSObjectProtocol {
    func LoadCharacter(character : CharacterModel) -> Void
}
