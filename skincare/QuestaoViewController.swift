//
//  QuestaoViewController.swift
//  skincare
//
//  Created by lorraine cristina on 15/06/23.
//

import UIKit

class QuestaoViewController: UIViewController {

    @IBOutlet weak var tituloQuestaoLabel: UILabel!
    
    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        print(sender.tag)
    }
    
    
    @IBOutlet var botoesRespostas: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
        
    }
    

    func configurarLayout(){
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
