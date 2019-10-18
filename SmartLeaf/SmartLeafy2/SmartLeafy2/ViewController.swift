//
//  ViewController.swift
//  SmartLeafy2
//
//  Created by Student on 17/10/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var plantaList = [Planta]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        PlantaDAO.getPlantas{ (plantas) in
            
            self.plantaList = plantas
            
            self.performSegue(withIdentifier: "loadSegue", sender: self)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? PlantaViewController {
            dest.plantaList = plantaList
        }
    }

}

