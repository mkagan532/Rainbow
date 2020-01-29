//
//  ColorDetailsViewController.swift
//  Rainbow
//
//  Created by Lambda_School_Loaner_232 on 1/28/20.
//  Copyright © 2020 Michael Kagan. All rights reserved.
//

import UIKit

class ColorDetailsViewController: UIViewController {
    
    var cellColor: MyColor?

    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    func updateViews() {
        if let cellColor = cellColor {
            title = cellColor.name
            view.backgroundColor = cellColor.color
        }
    }
    

}
