//
//  mod_navegador_principal.swift
//  boceto_2_CellView
//
//  Created by alumno on 10/11/24.
//

import UIKit

class mod_navegador_principal: UINavigationController{
    override func viewDidLoad() {
        activar_navigation_bar(activar: false)
    }
    
    func activar_navigation_bar(activar: Bool){
        self.navigationBar.isHidden = !activar
    }
}
