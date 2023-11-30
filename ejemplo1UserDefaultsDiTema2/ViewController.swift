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
    }


    @IBAction func btnguardar(_ sender: Any) {
    }
    
    
    @IBAction func btnMostrar(_ sender: Any) {
    }
    
    
    @IBAction func btnborrar(_ sender: Any) {
    }
}

