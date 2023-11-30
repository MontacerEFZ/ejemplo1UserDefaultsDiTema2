//
//  ViewController.swift
//  ejemplo1UserDefaultsDiTema2
//
//  Created by Montacer El Fazazi on 30/11/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtPalabra: UITextField!
    @IBOutlet weak var lbTexto: UILabel!
    
    var datos: ManagerUserDefaults! //hara falta para usar esa clase
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datos = ManagerUserDefaults()
        let nombreUsuario = datos.recuperarTexto(clave: "NOMBRE")
        let mostrarMensaje = datos.recuperarMensaje(clave: "MOSTRARMENSAJE")
        if mostrarMensaje {
            let alert = UIAlertController(title: "BIENVENID@", message: "Hola \(nombreUsuario) espero que te guste", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .destructive, handler: nil))
                            self.present(alert, animated: true, completion: nil)
        }
    }


    @IBAction func btnguardar(_ sender: Any) {
        guard let palabra = txtPalabra.text
        else{
            return
        }
        datos.guardarTexto(texto: palabra, clave: "TEXTITO")
        txtPalabra.text = ""
    }
    
    
    @IBAction func btnMostrar(_ sender: Any) {
        let palabra = datos.recuperarTexto(clave: "TEXTITO")
        lbTexto.text = palabra
    }
    
    
    @IBAction func btnborrar(_ sender: Any) {
        datos.borrarTexto(clave: "TEXTITO")
    }
}

