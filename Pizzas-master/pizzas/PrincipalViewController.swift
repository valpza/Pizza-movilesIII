//
//  PrincipalViewController.swift
//  pizzas
//
//  Created by moviles on 10/24/19.
//  Copyright © 2019 moviles. All rights reserved.
//

import UIKit

class PrincipalViewController: UIViewController {
    var progreso = "Crea tu PIZZA"
    var boton = ""
    @IBOutlet weak var lblProgreso: UILabel!
    @IBOutlet weak var lblConfir: UILabel!
    @IBOutlet weak var btnConfirmar: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblProgreso.text = progreso
        btnConfirmar.setTitle(boton, for: btnConfirmar.state)
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
    @IBAction func btnemp(_ sender: Any) {
    }
    @IBAction func btnConfrimar(_ sender: Any) {
        lblConfir.text = "TU PEDIDO ESTA EN CAMINO"
    }
    
}
