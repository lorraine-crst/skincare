//
//  QuestaoViewController.swift
//  skincare
//
//  Created by lorraine cristina on 15/06/23.
//

import UIKit

class QuestaoViewController: UIViewController {
    var pontuacao = 0
    var numQuestao = 0
    
    @IBOutlet weak var tituloQuestaoLabel: UILabel!
    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        let usuarioResposta = questoes[numQuestao].respostaCorreta == sender.tag
        if usuarioResposta {
            pontuacao += 1
            print("o usuario acertou")
        }
    }
    
    @IBOutlet var botoesRespostas: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
        configurarQuestao()
        
    }
    
    
    func configurarQuestao(){
        tituloQuestaoLabel.text = questoes[numQuestao].titulo
        for botao in botoesRespostas{
            let tituloBotao = questoes[numQuestao].respostas[botao.tag]
            botao.setTitle(tituloBotao, for: .normal)
        }
    }
    
    func configurarLayout(){
        tituloQuestaoLabel.numberOfLines = 0
        tituloQuestaoLabel.textAlignment = .center
        
        
        for botao in botoesRespostas{
            botao.layer.cornerRadius = 12
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
