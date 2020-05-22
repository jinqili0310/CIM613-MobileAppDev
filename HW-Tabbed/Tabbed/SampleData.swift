//
//  SampleData.swift
//  Tabbed
//
//  Created by Jinqi Li on 4/1/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import Foundation

final class SampleData {
    static func generatePlayersData() -> [Player] {
        return [
            Player(name: "Bill Evans", game: "Tic-Tac-Toe", rating: 4),
            Player(name: "Oscar Peterson", game: "Sin the bottle", rating: 5),
            Player(name: "Dave Brubeck", game: "Texas hold 'em poker", rating: 2)
        ]
    }
}
