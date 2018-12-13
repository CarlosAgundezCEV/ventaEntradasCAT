//
//  CompradasTableViewController.swift
//  ventaEntradasCAT
//
//  Created by wizO on 12/12/2018.
//  Copyright © 2018 Carlos Agundez Torres. All rights reserved.
//

import UIKit

class CompradasTableViewController: UITableViewController {
    
    var imgEntradaComprada:[String] = []
    var nombreConciertoComprado:[String] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 160

    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaEntradas.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CeldaCompradas", for: indexPath) as! CompradasTableViewCell
        
        cell.nombreEntradaCompradaLBL.text = listaEntradas[indexPath.row].nombreConcierto
        cell.entradaCompradaIMG.image = listaEntradas[indexPath.row].imagenConcierto
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detalleEntrada = segue.destination as! ViewController
        
        let celda = sender as! CompradasTableViewCell
        
        detalleEntrada.nombreConcierto = celda.nombreEntradaCompradaLBL.text!
        detalleEntrada.imagenConcierto = celda.entradaCompradaIMG.image!
        
    }
    
    

}
