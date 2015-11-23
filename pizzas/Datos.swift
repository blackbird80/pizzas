//
//  Datos.swift
//  pizzas
//
//  Created by rocio urtecho on 11/19/15.
//  Copyright © 2015 Carlos Concha. All rights reserved.
//

import Foundation

class SharingManager {
    var tamanoPizza :String = ""
    var tipoMasa : String = ""
    var tipoQueso : String = ""
    var ingredientes = ["","","","",""]
    static let sharedInstance = SharingManager()
}