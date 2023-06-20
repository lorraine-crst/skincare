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
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1)
        }
      
        
        if numQuestao < questoes.count - 1 {
                    numQuestao += 1
                    Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(configurarQuestao), userInfo: nil, repeats: false)
        } else{
            navegaTelaResultado()
        }
    }
    func navegaTelaResultado(){
        performSegue(withIdentifier: "irParaTelaDesempenho", sender: nil)
    }
    
    @IBOutlet var botoesRespostas: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
        configurarQuestao()
        
    }
    
    
    @objc func configurarQuestao(){
        tituloQuestaoLabel.text = questoes[numQuestao].titulo
        for botao in botoesRespostas {
                    botao.backgroundColor = UIColor(red: 116/255, green: 58/255, blue: 255/255, alpha: 1.0)
                    let tituloBotao = questoes[numQuestao].respostas[botao.tag]
                    botao.setTitle(tituloBotao, for: .normal)
                }
    }
    
    func configurarLayout(){
        tituloQuestaoLabel.numberOfLines = 0
        tituloQuestaoLabel.textAlignment = .center
        navigationItem.hidesBackButton = true
        
        for botao in botoesRespostas{
            botao.layer.cornerRadius = 12
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultadoVC = segue.destination as? ResultadoViewController else {return}
        resultadoVC.pontuacao = pontuacao
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
