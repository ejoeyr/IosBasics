//
//  ThirdViewController.swift
//  MiraclePill
//
//  Created by Joey Ramirez on 10/11/17.
//  Copyright © 2017 Joey Ramirez. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    private var _selectedSong: String!
    
    
    var selectedSong: String{
        
        get{
            return _selectedSong
        }
        set{
            _selectedSong = newValue;
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
            dataLabel.text = _selectedSong
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
