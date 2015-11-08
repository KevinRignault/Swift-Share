//
//  ViewController.swift
//  Swift-Share
//
//  Created by Kévin Rignault on 21/09/2015.
//  Copyright © 2015 Kévin Rignault. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func btnFacebook(sender: AnyObject) {
        //-- Check if the user has Facebook app and is log in
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook) {
            
            //-- Share to Facebook service
            let shareToFacebook : SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            
            //-- Show share view
            self.presentViewController(shareToFacebook, animated: true, completion: nil)
        }
    }
    
    @IBAction func btnTwitter(sender: AnyObject) {
        //-- Check if the user has Facebook app and is log in
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter) {
        
            //-- Share to twitter service
            let shareToTwitter : SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        
            //-- Show share view
            self.presentViewController(shareToTwitter, animated: true, completion: nil)
        }
    }
    

}

