//
//  Materia.swift
//  Navegacion
//
//  Created by Alumno on 9/23/19.
//  Copyright © 2019 ulsa. All rights reserved.
//

import Foundation

class Materia{
    
    var nombre : String?
    var calPrimerParcial : Int?
    var calSegundoParcial : Int?
    var calTercerParcial : Int?
    var calFinal : Int?
    
    init(nombre : String, calPrimerParcial : Int, calSegundoParcial : Int, calTercerParcial : Int, calFinal : Int) {
        self.nombre = nombre
        self.calPrimerParcial = calPrimerParcial
        self.calSegundoParcial = calSegundoParcial
        self.calTercerParcial = calTercerParcial
        self.calFinal = calFinal
        
    }


}
