//
//  ComprarTableViewController.swift
//  ventaEntradasCAT
//
//  Created by wizO on 12/12/2018.
//  Copyright © 2018 Carlos Agundez Torres. All rights reserved.
//

import UIKit

class ComprarTableViewController: UITableViewController {
    
    
    var nombreConcierto:[String] = ["Billie Elish", "Steve McQueen", "Arthur James", "Ronald Smith"]
    var fechas:[String] = ["12/12/2018","14/12/2018","20/12/2018","30/12/2018"]
    var imagenes:[String] = ["1","2","3","4"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 160

    }



    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return nombreConcierto.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CeldaID", for: indexPath) as! ComprarTableViewCell
        
        cell.nombreEntradaLBL.text = nombreConcierto[indexPath.row]
        cell.comprarEntradaIMG.image = UIImage(named: imagenes[indexPath.row])
        cell.fechaEntradasLBL.text = fechas[indexPath.row]
        
        
        return cell
    }
    


}
