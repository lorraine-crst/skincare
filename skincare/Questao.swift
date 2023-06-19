//
//  Questao.swift
//  skincare
//
//  Created by lorraine cristina on 19/06/23.
//

import Foundation

struct Questao{
    var titulo: String
    var respostas: [String]
    var respostaCorreta: Int
}

let questoes: [Questao] = [
Questao(titulo: "Oleosidade", respostas: ["Oleosa", "Seca", "Nao sei"], respostaCorreta: 2),
Questao(titulo: "Sensibilidade", respostas: ["Sim", "Nao", "Nao sei"], respostaCorreta: 3),
Questao(titulo: "Pigmentacao", respostas: ["Sim", "Nao", "Nao sei"], respostaCorreta: 1),
Questao(titulo: "Propensao para formar rugas", respostas: ["Sim", "Nao", "Nao sei"], respostaCorreta: 2)
]
