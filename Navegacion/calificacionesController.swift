//
//  calificacionesController.swift
//  Navegacion
//
//  Created by Alumno on 9/23/19.
//  Copyright © 2019 ulsa. All rights reserved.
//

import Foundation
import UIKit


class calificacionesController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tvCalificaciones: UITableView!
    var materias : [Materia] = []
    override func viewDidLoad() {
        materias.append(Materia(nombre: "Español", calPrimerParcial: 10, calSegundoParcial: 9, calTercerParcial: 9, calFinal: 10))
        materias.append(Materia(nombre: "Matematicas", calPrimerParcial: 5, calSegundoParcial: 5, calTercerParcial: 5, calFinal: 5))
        materias.append(Materia(nombre: "Ingles", calPrimerParcial: 8, calSegundoParcial: 4, calTercerParcial: 6, calFinal: 7))
    }
    
    //Numero de secciones
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materias.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMateria")
        celda?.textLabel?.text = materias[indexPath.row].nombre
        
        return celda!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goToDetallesMateria"){
            let destino = segue.destination as? DetallesMateriaController
            destino?.materia = materias[tvCalificaciones.indexPathForSelectedRow!.row]
        }
    }
}
