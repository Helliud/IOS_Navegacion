
//
//  DetallesMateria.swift
//  Navegacion
//
//  Created by Alumno on 9/24/19.
//  Copyright © 2019 ulsa. All rights reserved.
//

import Foundation
import UIKit

class DetallesMateriaController: UIViewController {
    
    var materia : Materia?
    @IBOutlet weak var lblCalPrimer: UILabel!
    @IBOutlet weak var lblCalSegundo: UILabel!
    @IBOutlet weak var lblCarTercer: UILabel!
    @IBOutlet weak var lblCalFinal: UILabel!
    
    override func viewDidLoad() {
        self.title = materia!.nombre!
        lblCalPrimer.text = "\(materia!.calPrimerParcial!)"
        lblCalSegundo.text = "\(materia!.calSegundoParcial!)"
        lblCarTercer.text = "\(materia!.calTercerParcial!)"
        lblCalFinal.text = "\(materia!.calFinal!)"

    }
}
