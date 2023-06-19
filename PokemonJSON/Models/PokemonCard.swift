//
//  PokemonCard.swift
//  PokemonJSON
//
//  Created by Юрий Емелин on 19.06.2023.
//

import Foundation

struct PokemonCard: Decodable {
    let name: String
    let supertype: String
    let convertedEnergyCost: Int
    let damage: Int
    let large: URL
    let tcgplayer: URL
    let cardmarket: URL
}
