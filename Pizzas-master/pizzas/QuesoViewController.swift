//
//  QuesoViewController.swift
//  pizzas
//
//  Created by moviles on 10/24/19.
//  Copyright © 2019 moviles. All rights reserved.
//

import UIKit

class QuesoViewController: UIViewController {

    @IBOutlet weak var sinQ: UISwitch!
    @IBOutlet weak var parmes: UISwitch!
    @IBOutlet weak var ched: UISwitch!
    @IBOutlet weak var moza: UISwitch!
    @IBOutlet weak var lblProgreso: UILabel!
    var masa = 0
    var tamano = 0
    var progreso = ""
    var strMasa = ""
    var queso = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        switch masa {
        case 1:
            strMasa = "Delgada"
        case 2:
            strMasa = "Crujiente"
        case 3:
            strMasa = "Gruesa"
        default:
            strMasa = ""
        }
        
        progreso = progreso + "\nMasa: " + strMasa
        lblProgreso.text = progreso
        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnMoza(_ sender: Any) {
        sinQ.setOn(false, animated: true)
        ched.setOn(false, animated: true)
        parmes.setOn(false, animated: true)
        if(moza.isOn){
            queso = 1
        }else{
            sinQ.setOn(true, animated: true)
        }
    }
    @IBAction func btnChed(_ sender: Any) {
        sinQ.setOn(false, animated: true)
        parmes.setOn(false, animated: true)
        moza.setOn(false, animated: true)
        if(ched.isOn){
            queso = 2
        }else{
            sinQ.setOn(true, animated: true)
        }
    }
    @IBAction func btnParms(_ sender: Any) {
        sinQ.setOn(false, animated: true)
        ched.setOn(false, animated: true)
        moza.setOn(false, animated: true)
        if(parmes.isOn){
            queso = 3
        }else{
            sinQ.setOn(true, animated: true)
        }
    }
    @IBAction func btnSin(_ sender: Any) {
        ched.setOn(false, animated: true)
        parmes.setOn(false, animated: true)
        moza.setOn(false, animated: true)
        if(sinQ.isOn){
            queso = 0
        }else{
            sinQ.setOn(true, animated: true)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaIngre = segue.destination as! IngredientesViewController
        vistaIngre.masa = self.masa
        vistaIngre.progreso = self.progreso
        vistaIngre.tamano = self.tamano
        vistaIngre.queso = self.queso
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
