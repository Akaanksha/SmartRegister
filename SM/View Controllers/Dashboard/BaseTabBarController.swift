//
//  BaseTabBarController.swift
//  SM
//
//  Created by Akaanksha Sharman on 27/02/18.
//  Copyright © 2018 Akaanksha Sharman. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.addSideMenuButton()

        // Do any additional setup after loading the view.
    }
    

    func addSideMenuButton() {
        let leftBarButtonItem = UIBarButtonItem(title: "Menu", style: UIBarButtonItemStyle.plain, target: self, action: #selector(self.leftSideMenuTapped))
        self.navigationItem.leftBarButtonItem = leftBarButtonItem
    }
    
    @objc func leftSideMenuTapped() {
        sideMenuController?.showLeftView(animated: true, completionHandler: nil)
        
    }

}
