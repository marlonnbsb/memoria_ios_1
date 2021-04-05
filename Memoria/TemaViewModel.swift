//
//  TemaViewModel.swift
//  Memoria
//
//  Created by Marlon Machado on 05/04/21.
//

import SwiftUI

struct Tema: Hashable {
    let cor: Color
    let nomeFase: String
    let imgCartas: [String]
}

class TemaViewModel {
    var temas: [Tema] {
        var temas: [Tema] = []
        temas.append(Tema(cor: Color.blue,
                          nomeFase: "Frutas",
                          imgCartas: ["🍇", "🥑", "🌶", "🌽", "🥐", "🍉"]))
        temas.append(Tema(cor: Color.green,
                          nomeFase: "Esportes",
                          imgCartas: ["⚽️", "🏀", "🏈" ,"🎾", "🏐", "🎱"]))
        temas.append(Tema(cor: Color.yellow,
                          nomeFase: "Animais",
                          imgCartas: ["🐶", "🐷", "🐭" ,"🦊", "🐻", "🐼"]))
        return temas
    }
}
