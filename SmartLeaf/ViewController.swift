//
//  ViewController.swift
//  SmartLeaf
//
//  Created by Student on 08/10/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PlantaLabel: UILabel!
    var plantaList = [Planta]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        PlantaDAO.getPlantas{ (plantas) in
//            self.plantaList = plantas
//            var text = ""
//
//            for planta in self.plantaList {
//                text += planta.getNome()
//            }
//
//            print(text)
//
//            self.PlantaLabel.text = text
            
            
            self.plantaList = plantas
            
            self.performSegue(withIdentifier: "loadSegue2", sender: self)
        }
        
        
//        PlantaDAO.getPlantas { (plantas) in
//            self.PlantaLabel.text = String(describing: plantas[0].getNome())
//        }
         //PlantaLabel.text = plantaList[0].getNome()
        
    }
    
    /*
    PlantaDAO.getPlantas { (planta) in
    self.labelCloudant.text = String(describing: estacionamento.carro[1].modelo)
    }
 */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlantaCollectionViewController {
            destination.plantaList = plantaList
        }
    }

}

