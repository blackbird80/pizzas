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

        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.textTamano.text = SharingManager.sharedInstance.tamanoPizza
    }
}

