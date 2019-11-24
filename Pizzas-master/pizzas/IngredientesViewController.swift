//
//  IngredientesViewController.swift
//  pizzas
//
//  Created by moviles on 10/24/19.
//  Copyright © 2019 moviles. All rights reserved.
//

import UIKit

class IngredientesViewController: UIViewController {
    
    @IBOutlet weak var chile: UISwitch!
    @IBOutlet weak var anchoa: UISwitch!
    @IBOutlet weak var pina: UISwitch!
    @IBOutlet weak var pimiento: UISwitch!
    @IBOutlet weak var cebolla: UISwitch!
    @IBOutlet weak var aceituna: UISwitch!
    @IBOutlet weak var salchicha: UISwitch!
    @IBOutlet weak var pavo: UISwitch!
    @IBOutlet weak var pepe: UISwitch!
    @IBOutlet weak var jamon: UISwitch!
    @IBOutlet weak var lblProgreso: UILabel!
    var masa = 0
    var tamano = 0
    var progreso = ""
    var queso = 0
    var strQueso = ""
    var strIngredientes = Set<String>()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        switch queso {
        case 0:
            strQueso = "Sin Queso"
        case 1:
            strQueso = "Mozzarele"
        case 2:
            strQueso = "Cheddar"
        case 3:
            strQueso = "Parmesano"
        default:
            strQueso = ""
        }
        progreso = progreso + "\nQueso: "+strQueso
        lblProgreso.text = "Seleccione de 1 a 5 ingredientes\n" + progreso
        strIngredientes.insert("Pepperoni")
    }
    

    @IBAction func btnJamon(_ sender: Any) {
        if(jamon.isOn){
            if(strIngredientes.count != 5){
                strIngredientes.insert("Jamon")
            }else{
                jamon.setOn(false, animated:true)
            }
        }else{
            if(strIngredientes.count != 1){
                strIngredientes.remove("Jamon")
            }else{
                jamon.setOn(true, animated:true)
            }
        }
    }
    @IBAction func btnPepe(_ sender: Any) {
        if(pepe.isOn){
            if(strIngredientes.count != 5){
                strIngredientes.insert("Pepperoni")
            }else{
                pepe.setOn(false, animated:true)
            }
        }else{
            if(strIngredientes.count != 1){
                strIngredientes.remove("Pepperoni")
            }else{
                pepe.setOn(true, animated:true)
            }
        }
    }
    @IBAction func btnPavo(_ sender: Any) {
        if(pavo.isOn){
            if(strIngredientes.count != 5){
                strIngredientes.insert("Pavo")
            }else{
                pavo.setOn(false, animated:true)
            }
        }else{
            if(strIngredientes.count != 1){
                strIngredientes.remove("Pavo")
            }else{
                pavo.setOn(true, animated:true)
            }
        }
    }
    @IBAction func btnSalch(_ sender: Any) {
        if(salchicha.isOn){
            if(strIngredientes.count != 5){
                strIngredientes.insert("Salchicha")
            }else{
                salchicha.setOn(false, animated:true)
            }
        }else{
            if(strIngredientes.count != 1){
                strIngredientes.remove("Salchicha")
            }else{
                salchicha.setOn(true, animated:true)
            }
        }
    }
    @IBAction func btnAceit(_ sender: Any) {
        if(aceituna.isOn){
            if(strIngredientes.count != 5){
                strIngredientes.insert("Aceituna")
            }else{
                aceituna.setOn(false, animated:true)
            }
        }else{
            if(strIngredientes.count != 1){
                strIngredientes.remove("Aceituna")
            }else{
                aceituna.setOn(true, animated:true)
            }
        }
    }
    @IBAction func btnCeb(_ sender: Any) {
        if(cebolla.isOn){
            if(strIngredientes.count != 5){
                strIngredientes.insert("Cebolla")
            }else{
                cebolla.setOn(false, animated:true)
            }
        }else{
            if(strIngredientes.count != 1){
                strIngredientes.remove("Cebolla")
            }else{
                cebolla.setOn(true, animated:true)
            }
        }
    }
    @IBAction func btnPimiento(_ sender: Any) {
        if(pimiento.isOn){
            if(strIngredientes.count != 5){
                strIngredientes.insert("Pimiento")
            }else{
                pimiento.setOn(false, animated:true)
            }
        }else{
            if(strIngredientes.count != 1){
                strIngredientes.remove("Pimiento")
            }else{
                pimiento.setOn(true, animated:true)
            }
        }
    }
    @IBAction func btnPina(_ sender: Any) {
        if(pina.isOn){
            if(strIngredientes.count != 5){
                strIngredientes.insert("Piña")
            }else{
                pina.setOn(false, animated:true)
            }
        }else{
            if(strIngredientes.count != 1){
                strIngredientes.remove("Piña")
            }else{
                pina.setOn(true, animated:true)
            }
        }
    }
    @IBAction func btnAnchoa(_ sender: Any) {
        if(anchoa.isOn){
            if(strIngredientes.count != 5){
                strIngredientes.insert("Anchoa")
            }else{
                anchoa.setOn(false, animated:true)
            }
        }else{
            if(strIngredientes.count != 1){
                strIngredientes.remove("Anchoa")
            }else{
                anchoa.setOn(true, animated:true)
            }
        }
    }
    @IBAction func btnHab(_ sender: Any) {
        if(chile.isOn){
            if(strIngredientes.count != 5){
                strIngredientes.insert("Chile Habanero")
            }else{
                chile.setOn(false, animated:true)
            }
        }else{
            if(strIngredientes.count != 1){
                strIngredientes.remove("Chile Habanero")
            }else{
                chile.setOn(true, animated:true)
            }
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaPrincipal = segue.destination as! PrincipalViewController
        var ings = ""
        for ing in strIngredientes {
            
            ings = ings + ing + "\n"
            
        }
        self.progreso = "Tu pizza es: \n" + self.progreso + "\n Ingresdientes\n " + ings
        
        vistaPrincipal.progreso = self.progreso
        vistaPrincipal.boton = "CONFIRMAR"
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
