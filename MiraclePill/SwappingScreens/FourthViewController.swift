//
//  FourthViewController.swift
//  MiraclePill
//
//  Created by Joey Ramirez on 10/11/17.
//  Copyright © 2017 Joey Ramirez. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    //force unwrap cause we're sure
    @IBOutlet weak var dataLabel: UILabel!
  
    //force unwrap
    private var _newData: String!
    
    
    var newData: String{
        
        get{
            return _newData
        }
        set{
            _newData = newValue;
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dataLabel.text = _newData
        
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
