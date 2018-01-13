//
//  SomeViewController.swift
//  MiraclePill
//
//  Created by Joey Ramirez on 10/11/17.
//  Copyright © 2017 Joey Ramirez. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func loadThirdScreenPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "ThirdViewController",
                     sender: "Angel Locsin")
    }
    
    @IBAction func loadFourthViewController(_ sender: Any) {
        
        
        performSegue(withIdentifier: "FourthViewController",
                     sender: "Anne Curtis")
    }
    
    
    //Always needed for navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //For ThirdViewController
        if let destination = segue.destination as? ThirdViewController{
            if let song = sender as? String{
                destination.selectedSong = song
            }
        }
        //For FourthViewController
        if let destination = segue.destination as? FourthViewController{
            if let data = sender as? String{
               destination.newData = data
            }
        }
    }
 

}
