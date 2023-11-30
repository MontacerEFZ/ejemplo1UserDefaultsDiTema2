//
//  ManagerUserDefaults.swift
//  ejemplo1UserDefaultsDiTema2
//
//  Created by Montacer El Fazazi on 30/11/2023.
//

import UIKit

class ManagerUserDefaults: NSObject {

    func guardarTexto(texto: String, clave: String){
        UserDefaults.standard.set(texto, forKey: clave)
        UserDefaults.standard.synchronize()
    }
    
    func recuperarTexto(clave: String) -> String{
        guard let devolverTexto : String = //guard es una palabra reservada para comprobar si algo esta vacio
                UserDefaults.standard.value(forKey: clave) as? String
        else{
            return "la clave no existe"
        }
        
        return devolverTexto
    }
    
    func borrarTexto(clave: String){
        UserDefaults.standard.removeObject(forKey: clave)
        UserDefaults.standard.synchronize()
    }
    
    class func inicializarAjustes(){ //class es para que sea static
        let defaults = UserDefaults.standard
        
        if defaults.bool(forKey: "VALORESGUARDADOS") == false{
            let defaultsValues: [String: Any] = (["MOSTRARMENSAJE": true, "NOMBRE":"Usuario","VALORESGUARDADOS": true])
            defaults.register(defaults: defaultsValues)
        }
        //ir a la izquierda, en appDelegate.swift y añadir en el metodo "func application" la funcion inicializarAjustes
    }
}
