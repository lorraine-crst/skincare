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
    
    @IBOutlet weak var botaoIniciarQuiz: UIButton! // aqui passamos o atroibuto do botao para configurar ele no configuraLayout
        
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
    } //toda funcao criada, passar dentro do viewDidLoad

    func configuraLayout(){
        navigationItem.hidesBackButton = true
        botaoIniciarQuiz.layer.cornerRadius = 12.0 //aqui configuramos um border radius no botao    
    }
}

