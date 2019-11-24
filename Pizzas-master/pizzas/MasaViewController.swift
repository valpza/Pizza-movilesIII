//
//  MasaViewController.swift
//  pizzas
//
//  Created by moviles on 10/24/19.
//  Copyright © 2019 moviles. All rights reserved.
//

import UIKit

class MasaViewController: UIViewController {

    @IBOutlet weak var btnGru: UISwitch!
    @IBOutlet weak var btnCruj: UISwitch!
    @IBOutlet weak var btnDel: UISwitch!
    @IBOutlet weak var lblDaots: UILabel!
    var tamano = 0
    var progreso = ""
    var masa = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        var strTamano = ""
        switch tamano {
        case 1:
            strTamano = "Chica"
        case 2:
            strTamano = "Mediano"
        case 3:
            strTamano = "Grande"
        default:
            strTamano = ""
        }
        progreso = "Tamaño: \(strTamano)"
        lblDaots.text = progreso

        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Gru(_ sender: Any) {
        btnDel.setOn(false, animated: true)
        btnCruj.setOn(false, animated: true)
        if(btnGru.isOn){
            masa = 3
        }else{
            btnDel.setOn(true, animated: true)
        }
    }
    @IBAction func Cruj(_ sender: Any) {
        btnDel.setOn(false, animated: true)
        btnGru.setOn(false, animated: true)
        if(btnCruj.isOn){
            masa = 2
        }else{
            btnDel.setOn(true, animated: true)
        }
    }
    @IBAction func Del(_ sender: Any) {
        btnCruj.setOn(false, animated: true)
        btnGru.setOn(false, animated: true)
        if(btnDel.isOn){
            masa = 1
        }else{
            btnDel.setOn(true, animated: true)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaQueso = segue.destination as! QuesoViewController
        vistaQueso.masa = self.masa
        vistaQueso.progreso = self.progreso
        vistaQueso.tamano = self.tamano
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
