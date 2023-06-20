//
//  ResultadoViewController.swift
//  skincare
//
//  Created by lorraine cristina on 19/06/23.
//

import UIKit

class ResultadoViewController: UIViewController {

    var pontuacao: Int?
    
    @IBOutlet weak var resultadoLabel: UILabel!
    
    @IBOutlet weak var recomendacoesLabel: UILabel!
    
    @IBOutlet weak var botaoRefazer: UIButton!
    
    func configurarLayout(){
        botaoRefazer.layer.cornerRadius = 12.0
        navigationItem.hidesBackButton = true
    }
    
    func configurarResultado(){
        guard let pontuacao = pontuacao else {return}
        resultadoLabel.text = "voce acertou \(pontuacao) de \(questoes.count) questoes" // modificar e fazer logica aqui
        let recomendacao = (pontuacao * 100) / questoes.count //aqui vai a recomendacao
        recomendacoesLabel.text = "recomendacao: \(recomendacao)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
        configurarResultado()
        // Do any additional setup after loading the view.
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
