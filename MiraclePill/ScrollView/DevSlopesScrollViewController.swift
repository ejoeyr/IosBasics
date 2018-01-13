//
//  DevSlopesScrollViewController.swift
//  MiraclePill
//
//  Created by Joey Ramirez on 10/7/17.
//  Copyright © 2017 Joey Ramirez. All rights reserved.
//

import Foundation
import UIKit

class DevSlopesScrollViewController : UIViewController{
    

    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    //Will store our images here
    var images = [UIImageView]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //content width of our scrollView
        var contentWidth: CGFloat = 0.0
        
        //for 0,1,2
        for x in 0...2{
            
            //add image to our images
            images.append(UIImageView(image: UIImage(named: "icon\(x).png")))
            
            var newX = view.frame.midX + view.frame.size.width * CGFloat(x)
            
            contentWidth += newX
            
            scrollView.addSubview(images[x])
            
            images[x].frame = CGRect(x: newX - 75, y: (view.frame.size.height / 2) - 75, width: 150, height: 150)
        }
        
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    
}


