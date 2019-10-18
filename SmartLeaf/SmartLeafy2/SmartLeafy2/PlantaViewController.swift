//
//  PlantaViewController.swift
//  SmartLeafy2
//
//  Created by Student on 18/10/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class PlantaViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var plantaList = [Planta]()
    var index = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return plantaList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "plantaCell", for: indexPath) as! PlantaCollectionViewCell
        
        cell.nomeLabel.text = plantaList[indexPath.item].getNome()
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        index = indexPath.item
        performSegue(withIdentifier: "plantaSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? PlantaEspecificaViewController {
            dest.planta = plantaList[index]
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
