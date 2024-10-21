//
//  ControladorPantallaDelPost.swift
//  boceto_2_CellView
//
//  Created by alumno on 10/11/24.
//

import UIKit

class ControladorPantallaDelPost: UIViewController{
    
    let proveedor_publicaciones = ProveedorDePublicaciones.autoreferencia
    
    
    @IBOutlet weak var TItulo_de_publicacion: UILabel!
    
    @IBOutlet weak var Cuerpo_de_publicacion: UILabel!
    
    
    @IBOutlet weak var Nombre_de_usuario: UILabel!
    
    
    @IBOutlet weak var Seccion_comentarios: UICollectionView!
    
    public var id_publicacion: Int?
    private var publicacion: Post?
    private var usuario: Usuario?
    private var lista_comentarios: [Comentario] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Adiós mundo")
        
        
        let controlador_de_navegacion = self.navigationController as? mod_navegador_principal
                controlador_de_navegacion?.activar_navigation_bar(activar: true)
        
        realizar_descarga_de_informacion()

    }
    
    func realizar_descarga_de_informacion(){
        if self.publicacion == nil{
            proveedor_publicaciones.obtener_publicacion(id: self.id_publicacion ?? -1, que_hacer_al_recibir: {
                [weak self] (publicacion) in self?.publicacion = publicacion
                DispatchQueue.main.async {
                    self?.dibujar_publicacion()
                }
            })
        }
        else if self.publicacion != nil{
            proveedor_publicaciones.obtener_usuario(id: publicacion!.userId, que_hacer_al_recibir: {
                [weak self] (usuario) in self?.usuario = usuario 
                DispatchQueue.main.async{
                    self?.dibujar_publicacion()
                }
             })
        }
    
}
    func dibujar_publicacion(){
        guard let publicacion_actual = self.publicacion else{
            return
        }
        
        guard let usuario_actual = self.usuario else{
            return
        }
        
        TItulo_de_publicacion.text = publicacion_actual.title
        Cuerpo_de_publicacion.text = publicacion_actual.body
            }}
            
