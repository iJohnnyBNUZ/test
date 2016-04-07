//
//  ViewController.swift
//  CollectionViewTute
//
//  Created by Johnny on 16/4/7.
//  Copyright © 2016年 Johnny. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var tableData: [String] = ["我的订单", "优惠券", "我的消息" ]
    var tableImages: [String] = ["sale.png", "list1.png", "messager.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell: colvwCell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! colvwCell
        cell.lblCell.text = tableData[indexPath.row]
        cell.imgCell.image = UIImage(named: tableImages[indexPath.row])
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        print("Cell \(indexPath.row) selected")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

