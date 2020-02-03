//
//  ViewController.swift
//  VisitedPage
//
//  Created by Dorin on 1/27/20.
//  Copyright © 2020 Dorin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var customtableview: UITableView!
    //var imagefiles2=["1.jpeg", "2.jpeg", "3.jpeg", "4.jpeg", "5.jpeg", "6.jpeg"]
    //var filename2=["Kacchi", "Burger", "Fuska", "IceCream", "FrenceFry", "Grilled_Chicken"]
    @IBOutlet weak var visitcollectionview: UICollectionView!
    var imagefiles=["1.jpeg", "2.jpeg", "3.jpeg", "4.jpeg", "5.jpeg", "6.jpeg"]
    var filename=["Kacchi", "Burger", "Fuska", "IceCream", "FrenceFry", "Grilled_Chicken"]

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        visitcollectionview.dataSource = self
        visitcollectionview.delegate = self
        customtableview.delegate = self
        customtableview.dataSource = self
    
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filename.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let Cccell:recentplacecollectioncellCollectionViewCell=visitcollectionview.dequeueReusableCell(withReuseIdentifier: "rcell", for: indexPath)as!recentplacecollectioncellCollectionViewCell
        Cccell.placelabel.text=filename[indexPath.row]
        Cccell.imageview.layer.cornerRadius = Cccell.imageview.frame.size.width / 2
        Cccell.clipsToBounds = true
        
        Cccell.imageview.image=UIImage(named: imagefiles[indexPath.row])
        return Cccell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filename.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Tcell:visitTableViewCell=customtableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as!visitTableViewCell
        Tcell.titlelabel.text=filename[indexPath.row]
        //Tcell.timageview.layer.cornerRadius = Tcell.timageview.frame.size.width/2
        Tcell.timageview.image=UIImage(named: imagefiles[indexPath.row])
        return Tcell
    }
    


}


