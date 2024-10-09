//
//  provedor_publicaciones.swift
//  boceto_2_CellView
//
//  Created by alumno on 10/9/24.
//

import Foundation
import UIKit

class ProveedorDePublicaciones{
    let url_de_publicaciones = "https://jsonplaceholder.typicode.com/posts"
    var lista_de_publicaciones: [Post] = []
    func obtener_publicaciones() -> [Post]{
        let ubicacion = URL(string: url_de_publicaciones)!
        URLSession.shared.dataTask(with: ubicacion){(datos, respuesta, error)in do{
            if let publicaciones_recibidas = datos{
                let prueba_de_intepretacion_de_datos = try JSONDecoder().decode([Post].self, from: publicaciones_recibidas)
                DispatchQueue.main.async{
                    print(prueba_de_intepretacion_de_datos)
                    self.lista_de_publicaciones = prueba_de_intepretacion_de_datos
                }
            }
            else{
                print(respuesta!)
            }}
            catch{
                print ("error")
            }
            
        }.resume()
        
        
        print(lista_de_publicaciones)
    }
}
