//
//  CompradasTableViewCell.swift
//  ventaEntradasCAT
//
//  Created by wizO on 12/12/2018.
//  Copyright © 2018 Carlos Agundez Torres. All rights reserved.
//

import UIKit

class CompradasTableViewCell: UITableViewCell {
    
    

    @IBOutlet weak var entradaCompradaIMG: UIImageView!
    
    @IBOutlet weak var nombreEntradaCompradaLBL: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
