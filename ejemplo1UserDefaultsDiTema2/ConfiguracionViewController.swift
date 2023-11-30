//
//  ConfiguracionViewController.swift
//  ejemplo1UserDefaultsDiTema2
//
//  Created by Montacer El Fazazi on 30/11/2023.
//

import UIKit

class ConfiguracionViewController: UIViewController {

    @IBOutlet weak var miçswitch: UISwitch!
    @IBOutlet weak var txtUsuario: UITextField!
    
    var datos: ManagerUserDefaults!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        datos = ManagerUserDefaults()

    }
    

    @IBAction func btnActivar(_ sender: Any) {
        datos.mostrarMensaje(mostrar: self.miçswitch.isOn)
        
        guard let usuario = txtUsuario.text
        else{
            return
        }
        
        datos.guardarTexto(texto: usuario, clave: "NOMBRE")
        txtUsuario.text = ""
    }
}
