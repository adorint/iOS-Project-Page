//
//  ViewController.swift
//  customCollectionTableView
//
//  Created by Dorin on 2/3/20.
//  Copyright © 2020 Dorin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource,UITableViewDelegate, UITableViewDataSource{
    

    
    @IBOutlet weak var customTableView: UITableView!
    
    @IBOutlet weak var visitCollectionView: UICollectionView!
    var imagefiles=["1.jpeg", "2.jpeg", "3.jpeg", "4.jpeg", "5.jpeg", "6.jpeg"]
    var filename=["Kacchi", "Burger", "Fuska", "IceCream", "FrenceFry", "Grilled_Chicken"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        visitCollectionView.dataSource = self
        visitCollectionView.delegate = self
        customTableView.delegate = self
        customTableView.dataSource = self
        //customTableView.alpha = 0.7
        
        
        customTableView.layer.shadowOpacity = 1.0
        customTableView.layer.shadowRadius = 4
        customTableView.layer.shadowOffset = CGSize(width: 0, height: 0)
        customTableView.layer.shadowColor = UIColor.gray.cgColor

       // addShadow()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filename.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let Cccell:recentplacecollectioncellCollectionViewCell=visitCollectionView.dequeueReusableCell(withReuseIdentifier: "rcell", for: indexPath)as!recentplacecollectioncellCollectionViewCell
        Cccell.placeLabel.text=filename[indexPath.row]
        Cccell.imageView.layer.cornerRadius = Cccell.imageView.frame.size.width / 2
        Cccell.clipsToBounds = true
        
        Cccell.imageView.image=UIImage(named: imagefiles[indexPath.row])
        return Cccell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let noOfCellsInRow = 3
        
        let flowLayout = collectionViewLayout as! UICollectionViewFlowLayout
        
        let totalSpace = flowLayout.sectionInset.left
            + flowLayout.sectionInset.right		
            + (flowLayout.minimumInteritemSpacing * CGFloat(noOfCellsInRow - 1))
        
        let size = Int((collectionView.bounds.width - totalSpace) / CGFloat(noOfCellsInRow))
        
        return CGSize(width: size, height: size)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filename.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Tcell:visitTableViewCell=customTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as!visitTableViewCell
        //customTableView.alpha = 0.7
        Tcell.titleLabel.text=filename[indexPath.row]
        //Tcell.timageview.layer.cornerRadius = Tcell.timageview.frame.size.width/2
        Tcell.timageView.image=UIImage(named: imagefiles[indexPath.row])
        return Tcell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
extension ViewController{
    
    func addShadow() {
        let shadowView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        shadowView.backgroundColor = .black
        shadowView.alpha = 0.7
        self.view.insertSubview(shadowView, at: 0)
    }
    
}

