//
//  ComprarTableViewCell.swift
//  ventaEntradasCAT
//
//  Created by wizO on 12/12/2018.
//  Copyright © 2018 Carlos Agundez Torres. All rights reserved.
//

import UIKit

class ComprarTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var comprarEntradaIMG: UIImageView!
    @IBOutlet weak var nombreEntradaLBL: UILabel!
    @IBOutlet weak var precioEntradasLBL: UILabel!
    @IBOutlet weak var numeroEntradasLBL: UILabel!
    @IBOutlet weak var fechaEntradasLBL: UILabel!
    
    
    var numeroEntradas = 1
    var precioEntradas = "15€"    
    override func awakeFromNib() {
        
        numeroEntradasLBL.text = String(numeroEntradas)
        precioEntradasLBL.text = String(precioEntradas)
        super.awakeFromNib()
        
    }
    
    @IBAction func stepperEntradas(_ sender: UIStepper) {
        numeroEntradasLBL.text = String(Int(sender.value))
        
        precioEntradasLBL.text = String(Int(sender.value * 15)) + "€"
        
        
        
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    @IBAction func comprarEntrada(_ sender: UIButton) {
        let comprar = Entrada(nombreConcierto: nombreEntradaLBL.text!, imagenConcierto: comprarEntradaIMG.image!)
        
        listaEntradas.append(comprar)
        
    
    }
    

    
    
}
