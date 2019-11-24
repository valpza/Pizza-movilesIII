//
//  TamanoViewController.swift
//  pizzas
//
//  Created by moviles on 10/24/19.
//  Copyright © 2019 moviles. All rights reserved.
//

import UIKit

class TamanoViewController: UIViewController {

    @IBOutlet weak var Grande: UISwitch!
    @IBOutlet weak var Mediano: UISwitch!
    @IBOutlet weak var Chico: UISwitch!
    
    var tamano = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaMasa = segue.destination as! MasaViewController
        vistaMasa.tamano = self.tamano
    }
    
    @IBAction func btnGrande(_ sender: Any) {
        Mediano.setOn(false, animated: true)
        Chico.setOn(false, animated: true)
        if(Grande.isOn){
            tamano = 3
        }else{
            Grande.setOn(true, animated: true)
        }
    }
    
    @IBAction func btnMediano(_ sender: Any) {
        Grande.setOn(false, animated: true)
        Chico.setOn(false, animated: true)
        if(Mediano.isOn){
            tamano = 2
        }else{
            Grande.setOn(true, animated: true)
        }
    }
    
    @IBAction func btnChico(_ sender: Any) {
        Mediano.setOn(false, animated: true)
        Grande.setOn(false, animated: true)
        if(Chico.isOn){
            tamano = 1
        }else{
            Grande.setOn(true, animated: true)
        }    }
    
}
