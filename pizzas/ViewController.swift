//
//  ViewController.swift
//  pizzas
//
//  Created by rocio urtecho on 11/16/15.
//  Copyright © 2015 Carlos Concha. All rights reserved.
//

import UIKit

var rowFinal : Int? = 0

class ViewController: UIViewController {
    
    @IBOutlet weak var textTamano: UILabel!
    
    @IBOutlet weak var textTpoMasa: UILabel!

    @IBOutlet weak var textTpoQueso: UILabel!
    
    @IBOutlet weak var textIngredientes: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
 //       let resultado = imc()
 //       let tamanoPizzaVista = segue.destinationViewController as! tamanoPizza
//        tamanoPizzaVista.rowF = Int(fieldTamano.text!)
    }

    @IBAction func btnPress(sender: AnyObject) {
        let alertController : UIAlertController!
        let alertController2 = UIAlertController(title: "Mensaje", message: "Su pedido será enviado. ¿Desea continuar?", preferredStyle: UIAlertControllerStyle.Alert)
        let mensaje = UIAlertController(title: "Felicidades!!!", message: "Pedido Confirmado", preferredStyle: UIAlertControllerStyle.Alert)
        
        if SharingManager.sharedInstance.tamanoPizza == "" ||
           SharingManager.sharedInstance.tipoMasa == "" ||
            SharingManager.sharedInstance.tipoQueso == "" {
            alertController = UIAlertController(title: "Mensaje", message: "Debe completar su pedido", preferredStyle: UIAlertControllerStyle.Alert)
            let alerta = UIAlertAction( title: "Aceptar", style: UIAlertActionStyle.Default, handler: nil )
            alertController.addAction(alerta)
                
            self.presentViewController(alertController, animated: true, completion: nil)
        }else{
            alertController2.addAction(UIAlertAction(title: "Confirmar", style: .Default, handler: {
                (ACTION : UIAlertAction!) in
                self.textTamano.text = ""
                self.textTpoMasa.text = ""
                self.textTpoQueso.text = ""
                SharingManager.sharedInstance.tamanoPizza = ""
                SharingManager.sharedInstance.tipoMasa = ""
                SharingManager.sharedInstance.tipoQueso = ""
                
                mensaje.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.Default, handler: nil ))
                
                self.presentViewController(mensaje, animated: true, completion: nil)
            }))
            alertController2.addAction(UIAlertAction(title: "Corregir", style: .Default, handler: nil ))
            
            self.presentViewController(alertController2, animated: true, completion: nil)
        }
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.textTamano.text = SharingManager.sharedInstance.tamanoPizza
        self.textTpoMasa.text = SharingManager.sharedInstance.tipoMasa
        self.textTpoQueso.text = SharingManager.sharedInstance.tipoQueso
    }
}

