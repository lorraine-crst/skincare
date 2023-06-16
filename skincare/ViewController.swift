//
//  ViewController.swift
//  skincare
//
//  Created by lorraine cristina on 15/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func botaoPressionado(_ sender: Any) {
        print("O botao foi pressionado!")
    }
    
    @IBOutlet weak var botaoIniciarQuiz: UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
    } //toda funcao criada, passar dentro do viewDidLoad

    func configuraLayout(){
        
    }
}

