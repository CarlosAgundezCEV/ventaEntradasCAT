//
//  ViewController.swift
//  ventaEntradasCAT
//
//  Created by wizO on 11/12/2018.
//  Copyright © 2018 Carlos Agundez Torres. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imagenDetalle: UIImageView!
    
    @IBOutlet weak var conciertoDetalle: UILabel!
    
    
    var imagenConcierto = UIImage()
    var nombreConcierto = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        conciertoDetalle.text = nombreConcierto
        
        imagenDetalle.image = imagenConcierto
        
        
    }


}

