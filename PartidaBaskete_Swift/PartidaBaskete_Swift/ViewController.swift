//
//  ViewController.swift
//  PartidaBaskete_Swift
//
//  Created by Caio Cardozo on 09/04/18.
//  Copyright © 2018 Caio Cardozo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var placarTimeA: UILabel!
    @IBOutlet weak var placarTimeB: UILabel!
    var resultadoTimeA: Int = 0
    var resultadoTimeB: Int = 0
    
    @IBAction func btnTresPontosTimeB(_ sender: UIButton) {
        self.adicionarPontos(pontos: 3, time: "B")
    }
    @IBAction func btnTresPontosTimeA(_ sender: UIButton) {
        self.adicionarPontos(pontos: 3, time:"A")
    }
    
    
    @IBAction func btnDoisPontosTimeA(_ sender: UIButton) {
        resultadoTimeA += 2
        self.placarTimeA.text = String(describing: resultadoTimeA)
    }
    
    @IBAction func btnUmPontoTimeA(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func adicionarPontos(pontos:Int, time:String = "A") -> () {
        if time == "A" {
            self.resultadoTimeA += pontos
            self.placarTimeA.text = String(describing: resultadoTimeA)
        }else{
            self.resultadoTimeB += pontos
            self.placarTimeB.text = String(describing: resultadoTimeB)
        }
    }
    
 


}

