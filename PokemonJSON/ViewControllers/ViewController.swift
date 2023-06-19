//
//  ViewController.swift
//  PokemonJSON
//
//  Created by Юрий Емелин on 19.06.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchPokemonCard()
    }
    
    private func fetchPokemonCard() {
        guard let url = URL(string: "https://api.pokemontcg.io/v2/cards/xy1-1") else { return }
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let pokemonCard = try decoder.decode(PokemonCard.self, from: data)
                print(pokemonCard)
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }

}

