//
//  HomeViewController.swift
//  SM
//
//  Created by Akaanksha Sharman on 27/02/18.
//  Copyright © 2018 Akaanksha Sharman. All rights reserved.
//

import UIKit
import Auk

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {    
    
    //MARK: - Outlets
    @IBOutlet weak var imgScrollVw: UIScrollView!
    @IBOutlet weak var collectionVw: UICollectionView!
   
    //MARK: - Constants
    let imgSource = [#imageLiteral(resourceName: "dashboard"), #imageLiteral(resourceName: "dashboard"), #imageLiteral(resourceName: "dashboard")]
    let arrTitleDataSource : [String] = ["Directory" , "Syllabus" , "Attendance","Exams","Results","Gallery","Achievement","Notice Board"]
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.beginImgScrolling()
        
    }

    //MARK: - Begin Image Scrolling
    func beginImgScrolling() {
        imgScrollVw.delegate = self
        
        imgScrollVw.auk.settings.contentMode = .scaleToFill
        imgScrollVw.auk.startAutoScroll(delaySeconds: 3)
        
        for items in imgSource {
            self.imgScrollVw.auk.show(image: items)
        }
    }

    //MARK: - Collection View Delegate DataSource
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.arrTitleDataSource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : HomeCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.identifiersForViews.IDENTIFIER_HOMECOLLECTIONVWCELL , for: indexPath) as! HomeCollectionViewCell
        cell.lblDashboardOptionTitle.text = arrTitleDataSource[indexPath.row]
        cell.imgVwDashboardOptions.image = #imageLiteral(resourceName: "sideMenu")
        return cell
    }
    
    //MARK: - CollectionView Flow Layout Delegate
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        print(self.collectionVw.frame.width)
        return CGSize(width: self.view.frame.width/3, height: self.collectionVw.frame.height/3)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}
